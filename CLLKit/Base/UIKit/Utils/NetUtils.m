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

+ (NSString *)ipAddressWithIfaName:(NSString *)name ipv4:(BOOL)isIpV4 {
    if (name.length == 0) return nil;
    NSString *address = nil;
    NSString *addressV6 = nil;
    struct ifaddrs *addrs = NULL;
    if (getifaddrs(&addrs) == 0) {
        struct ifaddrs *addr = addrs;
        while (addr) {
            if ([[NSString stringWithUTF8String:addr->ifa_name] isEqualToString:name]) {
                sa_family_t family = addr->ifa_addr->sa_family;
//                if(isIpV4 && family != AF_INET)continue;
//                if(!isIpV4 && family != AF_INET6)continue;
                switch (family) {
                    case AF_INET: { // IPv4
                        char str[INET_ADDRSTRLEN] = {0};
                        inet_ntop(family, &(((struct sockaddr_in *)addr->ifa_addr)->sin_addr), str, sizeof(str));
                        if (strlen(str) > 0) {
                            address = [NSString stringWithUTF8String:str];
                        }
                    } break;
                        
                    case AF_INET6: { // IPv6
                        char str[INET6_ADDRSTRLEN] = {0};
                        inet_ntop(family, &(((struct sockaddr_in6 *)addr->ifa_addr)->sin6_addr), str, sizeof(str));
                        if (strlen(str) > 0) {
                            addressV6 = [NSString stringWithUTF8String:str];
                        }
                    } break;
                        
                    default: break;
                }
                if(isIpV4 && address)break;
                if(!isIpV4 && addressV6)break;
                //if (address) break;
            }
            addr = addr->ifa_next;
        }
    }
    freeifaddrs(addrs);
    return address!=nil?address:addressV6;
}

+ (NSString *)ipAddressWIFIIPV4 {
    return [[self class] ipAddressWithIfaName:@"en0" ipv4:YES];
}
+ (NSString *)ipAddressWIFIIPV6 {
    return [[self class] ipAddressWithIfaName:@"en0" ipv4:NO];
}
+ (NSString *)ipAddressCellIPV4 {
    return [[self class] ipAddressWithIfaName:@"pdp_ip0" ipv4:YES];
}
+ (NSString *)ipAddressCellIPV6 {
    return [[self class] ipAddressWithIfaName:@"pdp_ip0" ipv4:NO];
}


@end
