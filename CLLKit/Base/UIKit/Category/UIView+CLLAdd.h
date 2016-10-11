//
//  UIView+CLLAdd.h
//  Pods
//
//  Created by iCooliean on 16/6/24.
//
//

#import <UIKit/UIKit.h>

@interface UIView (CLLAdd)
/*
 ** lineFrame:     虚线的 frame
 ** length:        虚线中短线的宽度
 ** spacing:       虚线中短线之间的间距
 ** color:         虚线中短线的颜色
 */
+ (UIView *)createDashedLineWithFrame:(CGRect)lineFrame
                           lineLength:(int)length
                          lineSpacing:(int)spacing
                            lineColor:(UIColor *)color;
@end
