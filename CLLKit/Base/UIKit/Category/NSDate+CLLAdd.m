//
//  NSDate+CLLAdd.m
//  Pods
//
//  Created by iCooliean on 16/7/11.
//
//

#import "NSDate+CLLAdd.h"
#import "NSDate+TimeAgo.h"
@implementation NSDate (CLLAdd)

NSString * const dateFormatYMDHMS = @"yyyy-MM-dd HH:mm:ss";
NSString * const dateFormatYMDHM  = @"yyyy-MM-dd HH:mm";
NSString * const dateFormatYMD    = @"yyyy-MM-dd";
NSString * const dateFormatYM     = @"yyyy-MM";
NSString * const dateFormatMD     = @"MM/dd";
NSString * const dateFormatHMS    = @"HH:mm:ss";
NSString * const dateFormatHM     = @"HH:mm";

+(NSDate *)dateWithString:(NSString *)dateString format:(NSString *)formatString{
    NSDateFormatter  *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:formatString];
    NSDate *date = [dateformatter dateFromString:dateString];
    return date;
}
+(NSString *)formatDate:(NSDate *)date format:(NSString *)formatString{
    NSDateFormatter  *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:formatString];
    NSString *  locationString=[dateformatter stringFromDate:date];
    return locationString;
}
+(NSString *)formatDateString:(NSString *)dateString format:(NSString *)formatString{
    NSDate *tempDate = [[self class] dateByString:[dateString stringByReplacingOccurrencesOfString:@".0" withString:@""] format:dateFormatYMDHMS];
    NSDateFormatter  *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:formatString];
    NSString *  locationString=[dateformatter stringFromDate:tempDate];
    return locationString;
}
+(NSDate *)dateByString:(NSString *)dateString format:(NSString *)formatString{
    NSDateFormatter  *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:formatString];
    NSDate *date = [dateformatter dateFromString:dateString];
    return date;
}

+(NSString *)timeAgo:(NSString *)dateString{
    dateString = [dateString stringByReplacingOccurrencesOfString:@".0" withString:@""];
    return [[[self class] dateByString:dateString format:@"yyyy-MM-dd HH:mm:ss"] timeAgo];
}
@end
