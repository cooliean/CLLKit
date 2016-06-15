//
//  NavUtils.h
//  Pods
//
//  Created by iCooliean on 16/6/12.
//
//

#import <UIKit/UIKit.h>

@interface NavUtils : NSObject
/**
 *  设置Nav 的颜色 要在AppDelegate里面设置
 *
 *  @param barBackColor 背景颜色
 *  @param textColor    文本颜色
 *  @param backImage    返回按钮的图片
 */
+(void)setupNavigation:(UIColor *)barBackColor textColor:(UIColor *)textColor backImage:(UIImage *)backImage;
/**
 *  设置Nav 的颜色 要在AppDelegate里面设置
 *
 *  @param barBackColor 背景颜色
 *  @param textColor    文本颜色
 *  @param backImage    返回按钮的图片
 *  @param bHidden      是否隐藏返回按钮的文本;
 */
+(void)setupNavigation:(UIColor *)barBackColor textColor:(UIColor *)textColor backImage:(UIImage *)backImage hiddenBackTitle:(BOOL)bHidden;
@end
