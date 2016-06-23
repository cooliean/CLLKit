//
//  NSString+CLLAdd.h
//  Pods
//
//  Created by iCooliean on 16/6/23.
//
//

#import <Foundation/Foundation.h>

@interface NSString (CLLAdd)
/**
 *  格式化秒数 成分秒时
 *
 *  @param seconds 秒数(整数)
 *
 *  @return NSString example:  12:12
 */
+(NSString*)timeformatFromSeconds:(NSInteger)seconds;
@end
