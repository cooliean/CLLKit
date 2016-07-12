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
+(NSDate *)dateByString:(NSString *)dateString format:(NSString *)formatString{
    NSDateFormatter  *dateformatter=[[NSDateFormatter alloc] init];
    [dateformatter setDateFormat:formatString];
    NSDate *date = [dateformatter dateFromString:dateString];
    return date;
}

+(NSString *)timeAgo:(NSString *)dateString{
    return [[[self class] dateByString:dateString format:@"yyyy-MM-dd HH:mm:ss"] timeAgo];
}
@end
