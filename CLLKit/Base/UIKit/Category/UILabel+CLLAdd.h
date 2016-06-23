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


+(id)getCommonLabel;
@end
