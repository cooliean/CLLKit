//
//  NetUtils.h
//  Pods
//
//  Created by iCooliean on 16/6/21.
//
//

#import <Foundation/Foundation.h>

@interface NetUtils : NSObject
/**
 *  获取IP地址  见#import "UIDevice+YYAdd.h"
 *
 *  @return 返回IPV4
 */

+ (NSString *)ipAddressWIFIIPV4;

+ (NSString *)ipAddressWIFIIPV6;

+ (NSString *)ipAddressCellIPV4;

+ (NSString *)ipAddressCellIPV6;

+ (NSString *)ipAddressWithIfaName:(NSString *)name ipv4:(BOOL)isIpV4;
@end
