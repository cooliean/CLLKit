//
//  UIColor+HexColor.h
//  Pods
//
//  Created by iCooliean on 16/6/12.
//
//

#import <UIKit/UIKit.h>

@interface UIColor (HexColor)
/**
 *  颜色
 *
 *  @param color #ffffff
 *
 *  @return UIColor
 */
+ (UIColor *)colorWithHexString:(NSString *)color;
+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;
@end
