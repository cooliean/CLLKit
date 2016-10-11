//
//  UILabel+CLLAdd.m
//  Pods
//
//  Created by iCooliean on 16/6/21.
//
//

#import "UILabel+CLLAdd.h"

@implementation UILabel (CLLAdd)


-(void)setDeleteLineForLabel:(UIColor *)lineColor{
    if(!self.text)return;
    NSUInteger length = [self.text length];
    NSMutableAttributedString *attri = [[NSMutableAttributedString alloc] initWithString:self.text];
    [attri addAttribute:NSStrikethroughStyleAttributeName value:@(NSUnderlinePatternSolid | NSUnderlineStyleSingle) range:NSMakeRange(0, length)];
    [attri addAttribute:NSStrikethroughColorAttributeName value:lineColor range:NSMakeRange(0, length)];
    [self setAttributedText:attri];
}

-(CGSize)getTitleCGSize{
    return [self.text sizeWithAttributes:@{NSFontAttributeName:self.font}];
}

+(id)getCommonLabel:(UIFont *)font{
    UILabel *label = [UILabel new];
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor blackColor];
    label.adjustsFontSizeToFitWidth = NO;
    label.textAlignment = NSTextAlignmentLeft;
    label.font = font;
    return label;
}


+(id)getCommonLabel{
    return [[self class] getCommonLabel:[UIFont systemFontOfSize:16.0f]];
}


@end
