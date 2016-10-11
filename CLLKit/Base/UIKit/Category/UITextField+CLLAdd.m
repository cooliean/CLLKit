//
//  UITextField+CLLAdd.m
//  Pods
//
//  Created by iCooliean on 2016/10/2.
//
//

#import "UITextField+CLLAdd.h"

@implementation UITextField (CLLAdd)
+(UITextField *)getCommonTextField:(UIFont *)font{
    /*
     如果是在最左侧加图片就换成:
     textField.leftView=imgv;
     textField.leftViewMode = UITextFieldViewModeAlways;
     */
    UITextField *field = [[UITextField alloc]init];
    //设置输入框内容的字体样式和大小
    field.font = font;
    [field setBorderStyle:UITextBorderStyleNone];
    field.autocorrectionType = UITextAutocorrectionTypeNo;
    field.autocapitalizationType = UITextAutocapitalizationTypeNone;
    //UITextField里面的text垂直居中可以这样写:
    field.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    return field;
}
@end
