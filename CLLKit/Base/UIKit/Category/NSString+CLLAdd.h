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
/**
 *  判断字符串是否全部为数字
 *
 *  @param string 要判断的字符串
 *
 *  @return 
 */
+ (BOOL)isAllNum:(NSString *)string;
/**
 *   判断字符串中是否含有中文
 *
 */
+ (BOOL)isHaveChineseInString:(NSString *)string;

/**
 *  判断字符串中是否含有某个字符串
 *
 *
 */
- (BOOL)indexOf:(NSString *)subString;
/**
 *  判断字符串中是否含有空格
 *
 */
- (BOOL)isHaveSpaceInString;

/**
 *  获取字符串(或汉字)首字母
 *
 */
- (NSString *)firstCharacterWithString;
@end
