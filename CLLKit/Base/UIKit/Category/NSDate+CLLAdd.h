//
//  NSDate+CLLAdd.h
//  Pods
//
//  Created by iCooliean on 16/7/11.
//
//

#import <Foundation/Foundation.h>

@interface NSDate (CLLAdd)
/**
 *  转换时间显示，
 * "A moment ago", "30 seconds ago", "5 minutes ago", "Yesterday", "Last month", "2 years ago", and so on.
 *
 *  @param dateString 时间字符
 *
 */
+(NSString *)timeAgo:(NSString *)dateString;
+(NSDate *)dateByString:(NSString *)dateString format:(NSString *)formatString;
@end
