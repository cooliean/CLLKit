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
// 判断字符串是否全部为数字
+ (BOOL)isAllNum:(NSString *)string{
    unichar c;
    for (int i=0; i<string.length; i++) {
        c=[string characterAtIndex:i];
        if (!isdigit(c)) {
            return NO;
        }
    }
    return YES;
}
//判断字符串中是否含有中文
+ (BOOL)isHaveChineseInString:(NSString *)string{
    for(NSInteger i = 0; i < [string length]; i++){
        int a = [string characterAtIndex:i];
        if (a > 0x4e00 && a < 0x9fff) {
            return YES;
        }
    }
    return NO;
}
- (BOOL)isHaveSpaceInString{
    NSRange _range = [self rangeOfString:@" "];
    if (_range.location != NSNotFound) {
        return YES;
    }else {
        return NO;
    }
}
//判断字符串中是否含有某个字符串
- (BOOL)indexOf:(NSString *)subString{
    NSRange _range = [subString rangeOfString:self];
    if (_range.location != NSNotFound) {
        return YES;
    }else {
        return NO;
    }
}


//获取字符串(或汉字)首字母
- (NSString *)firstCharacterWithString{
    NSMutableString *str = [NSMutableString stringWithString:self];
    CFStringTransform((CFMutableStringRef)str, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((CFMutableStringRef)str, NULL, kCFStringTransformStripDiacritics, NO);
    NSString *pingyin = [str capitalizedString];
    return [pingyin substringToIndex:1];
}
@end
