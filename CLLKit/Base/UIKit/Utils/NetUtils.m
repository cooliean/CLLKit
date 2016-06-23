//
//  NetUtils.m
//  Pods
//
//  Created by iCooliean on 16/6/21.
//
//

#import "NetUtils.h"
#include <arpa/inet.h>
#include <ifaddrs.h>
#include <resolv.h>
#include <dns.h>
@implementation NetUtils
// Get IP Address
+ (NSString *)getIPAddress {
    NSString *address = @"error";
    struct ifaddrs *interfaces = NULL;
    struct ifaddrs *temp_addr = NULL;
    int success = 0;
    // retrieve the current interfaces - returns 0 on success
    success = getifaddrs(&interfaces);
    if (success == 0) {
        // Loop through linked list of interfaces
        temp_addr = interfaces;
        while(temp_addr != NULL) {
            //如果是IPV4地址，直接转化
            // Check if interface is en0 which is the wifi connection on the iPhone
            if ([[NSString stringWithUTF8String:temp_addr->ifa_name] isEqualToString:@"en0"] || [[NSString stringWithUTF8String:temp_addr->ifa_name] isEqualToString:@"pdp_ip0"])
            {
                //如果是IPV4地址，直接转化
                if (temp_addr->ifa_addr->sa_family == AF_INET){
                    // Get NSString from C String
                    address = [[self class] formatIPV4Address:((struct sockaddr_in *)temp_addr->ifa_addr)->sin_addr];
                }
                //如果是IPV6地址
                else if (temp_addr->ifa_addr->sa_family == AF_INET6){
                    address = [[self class] formatIPV6Address:((struct sockaddr_in6 *)temp_addr->ifa_addr)->sin6_addr];
                    if (address && ![address isEqualToString:@""] && ![address.uppercaseString hasPrefix:@"FE80"]) break;
                }
            }
            temp_addr = temp_addr->ifa_next;
        }
    }
    // Free memory
    freeifaddrs(interfaces);
    return address;
    
}

/*
 4.1 IP地址从二进制到符号的转化
 
 之前我们都是通过inet_ntoa()进行二进制到符号，这个API只能转化IPV4地址。而inet_ntop()能够兼容转化IPV4和IPV6地址。 写了一个公用的in6_addr的转化方法如下：
 
 */
//for IPV6
+(NSString *)formatIPV6Address:(struct in6_addr)ipv6Addr{
    NSString *address = nil;
    char dstStr[INET6_ADDRSTRLEN];
    char srcStr[INET6_ADDRSTRLEN];
    memcpy(srcStr, &ipv6Addr, sizeof(struct in6_addr));
    if(inet_ntop(AF_INET6, srcStr, dstStr, INET6_ADDRSTRLEN) != NULL){
        address = [NSString stringWithUTF8String:dstStr];
    }
    return address;
}
//for IPV4
+(NSString *)formatIPV4Address:(struct in_addr)ipv4Addr{
    NSString *address = nil;
    char dstStr[INET_ADDRSTRLEN];
    char srcStr[INET_ADDRSTRLEN];
    memcpy(srcStr, &ipv4Addr, sizeof(struct in_addr));
    if(inet_ntop(AF_INET, srcStr, dstStr, INET_ADDRSTRLEN) != NULL){
        address = [NSString stringWithUTF8String:dstStr];
    }
    return address;
}

////设备DNS地址获取支持IPV6
//+(NSArray *)outPutDNSServers{
//    res_state res = malloc(sizeof(struct __res_state));
//    int result = res_ninit(res);
//    NSMutableArray *servers = [[NSMutableArray alloc] init];
//    if (result == 0) {
//        union res_9_sockaddr_union *addr_union = malloc(res->nscount * sizeof(union res_9_sockaddr_union));
//        res_getservers(res, addr_union, res->nscount);
//        for (int i = 0; i < res->nscount; i++) {
//            if (addr_union[i].sin.sin_family == AF_INET) {
//                char ip[INET_ADDRSTRLEN];
//                inet_ntop(AF_INET, &(addr_union[i].sin.sin_addr), ip, INET_ADDRSTRLEN);
//                NSString *dnsIP = [NSString stringWithUTF8String:ip];
//                [servers addObject:dnsIP];
//                NSLog(@"IPv4 DNS IP: %@", dnsIP);
//            } else if (addr_union[i].sin6.sin6_family == AF_INET6) {
//                char ip[INET6_ADDRSTRLEN];
//                inet_ntop(AF_INET6, &(addr_union[i].sin6.sin6_addr), ip, INET6_ADDRSTRLEN);
//                NSString *dnsIP = [NSString stringWithUTF8String:ip];
//                [servers addObject:dnsIP];
//                NSLog(@"IPv6 DNS IP: %@", dnsIP);
//            } else {
//                NSLog(@"Undefined family.");
//            }
//        }
//    }
//    res_nclose(res);
//    free(res);
//    return [NSArray arrayWithArray:servers];
//}
@end
