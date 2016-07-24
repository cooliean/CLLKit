//
//  NSString+CLLAdd.h
//  Pods
//
//  Created by iCooliean on 16/6/23.
//
//

#import <Foundation/Foundation.h>

@interface NSString (CLLAdd)


#pragma mark - java api
- (NSUInteger) compareTo: (NSString*) comp;
- (NSUInteger) compareToIgnoreCase: (NSString*) comp;
- (bool) contains: (NSString*) substring;
- (bool) endsWith: (NSString*) substring;
- (bool) startsWith: (NSString*) substring;
- (NSUInteger) indexOf: (NSString*) substring;
- (NSUInteger) indexOf:(NSString *)substring startingFrom: (NSUInteger) index;
- (NSUInteger) lastIndexOf: (NSString*) substring;
- (NSUInteger) lastIndexOf:(NSString *)substring startingFrom: (NSUInteger) index;
- (NSString*) substringFromIndex:(NSUInteger)from toIndex: (NSUInteger) to;
- (NSString*) trim;
- (NSArray*) split: (NSString*) token;
- (NSString*) replace: (NSString*) target withString: (NSString*) replacement;
- (NSArray*) split: (NSString*) token limit: (NSUInteger) maxResults;

- (CGSize)sizeWithConstrainedToWidth:(float)width fromFont:(UIFont *)font1 lineSpace:(float)lineSpace;
- (CGSize)sizeWithConstrainedToSize:(CGSize)size fromFont:(UIFont *)font1 lineSpace:(float)lineSpace;
- (void)drawInContext:(CGContextRef)context withPosition:(CGPoint)p andFont:(UIFont *)font andTextColor:(UIColor *)color andHeight:(float)height andWidth:(float)width;
- (void)drawInContext:(CGContextRef)context withPosition:(CGPoint)p andFont:(UIFont *)font andTextColor:(UIColor *)color andHeight:(float)height;

+(NSString *)nullValue:(NSString *)string;
+(NSString *)nullValueWithString:(NSString *)string defaultString:(NSString *)defaultString;

/**
 *  计算字符串对应字体的CGSize
 *
 *  @param size 计算的长宽
 *  @param font 计算的字体
 *
 *  @return 字符对应的宽高
 */
- (struct CGSize)calcSize:(CGSize)size font:(UIFont *)font;
- (CGFloat)calcSizeWithFont:(UIFont *)font;
- (CGSize)boundingRectWithSize:(CGSize)size withFont:(NSInteger)font;


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
- (BOOL)isIndexOf:(NSString *)subString;
/**
 *  判断字符串中是否含有空格
 *
 */
- (BOOL)isHaveSpaceInString;

/**
 *  获取字符串(或首汉字)首字母
 *
 */
- (NSString *)pinYinForFirstChar;


/**
 *  获取中文的拼音字符串（有空格）
 *
 */
- (NSString *) pinYinString;
/**
 *  获取中文的拼音字符串（无空格）
 *
 */
- (NSString *)pinYinStringNoSpace;

/**
 *  获取指定长度的随机字符串
 *
 *  @param length 字符串长度
 *
 */
+ (NSString *)randomStringByLength:(NSUInteger)length;


+(NSString *)formatFloat:(CGFloat)f placeHolder:(NSString *)holder;

+(NSString *)URLEncodedString: (NSString *) input;

+(NSString *)URLDecodedString: (NSString *) input;

@end
