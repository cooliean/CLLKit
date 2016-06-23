//
//  NSString+CLLAdd.m
//  Pods
//
//  Created by iCooliean on 16/6/23.
//
//

#import "NSString+CLLAdd.h"

@implementation NSString (CLLAdd)
+(NSString*)timeformatFromSeconds:(NSInteger)seconds
{
    //format of hour
    NSString *str_hour = [NSString stringWithFormat:@"%02ld",seconds/3600];
    //format of minute
    NSString *str_minute = [NSString stringWithFormat:@"%02ld",(seconds%3600)/60];
    //format of second
    NSString *str_second = [NSString stringWithFormat:@"%02ld",seconds%60];
    
    
    if([str_hour isEqualToString:@"00"]){
        return [NSString stringWithFormat:@"%@:%@",str_minute,str_second];
    }else{
        return [NSString stringWithFormat:@"%@:%@:%@",str_hour,str_minute,str_second];
    }
}

@end
