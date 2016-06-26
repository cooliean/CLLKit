//
//  UILabel+CLLAdd.h
//  Pods
//
//  Created by iCooliean on 16/6/21.
//
//

#import <UIKit/UIKit.h>

@interface UILabel (CLLAdd)


/**
 *  设置Label 删除线效果
 *
 *  @param lineColor 线条颜色
 */
-(void)setDeleteLineForLabel:(UIColor *)lineColor;
/**
 *  获取Label 内容在屏幕中的大小 (单行)
 *
 *  @return CGSize
 */
-(CGSize)getTitleCGSize;

+(id)getCommonLabel;
@end
