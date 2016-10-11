//
//  NSDate+CLLAdd.h
//  Pods
//
//  Created by iCooliean on 16/7/11.
//
//

#import <Foundation/Foundation.h>

@interface NSDate (CLLAdd)
FOUNDATION_EXPORT NSString * const dateFormatYMDHMS;
FOUNDATION_EXPORT NSString * const dateFormatYMDHM;
FOUNDATION_EXPORT NSString * const dateFormatYMD;
FOUNDATION_EXPORT NSString * const dateFormatYM;
FOUNDATION_EXPORT NSString * const dateFormatMD;
FOUNDATION_EXPORT NSString * const dateFormatHMS;
FOUNDATION_EXPORT NSString * const dateFormatHM;
/**
 *  转换时间显示，
 * "A moment ago", "30 seconds ago", "5 minutes ago", "Yesterday", "Last month", "2 years ago", and so on.
 *
 *  @param dateString 时间字符
 *
 */
+(NSString *)timeAgo:(NSString *)dateString;

+(NSDate *)dateWithString:(NSString *)dateString format:(NSString *)formatString;

+(NSString *)formatDate:(NSDate *)date format:(NSString *)formatString;

+(NSString *)formatDateString:(NSString *)dateString format:(NSString *)formatString;

+(NSDate *)dateByString:(NSString *)dateString format:(NSString *)formatString;
@end
