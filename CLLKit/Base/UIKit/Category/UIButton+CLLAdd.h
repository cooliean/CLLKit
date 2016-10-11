//
//  UIButton+CLLAdd.h
//  Pods
//
//  Created by iCooliean on 16/6/22.
//
//

#import <UIKit/UIKit.h>

@interface UIButton (CLLAdd)
// Badge value to be display
@property (nonatomic) NSString *badgeValue;
// Badge background color
@property (nonatomic) UIColor *badgeBGColor;
// Badge text color
@property (nonatomic) UIColor *badgeTextColor;
// Badge font
@property (nonatomic) UIFont *badgeFont;
// Padding value for the badge
@property (nonatomic) CGFloat badgePadding;
// Minimum size badge to small
@property (nonatomic) CGFloat badgeMinSize;
// Values for offseting the badge over the BarButtonItem you picked
@property (nonatomic) CGFloat badgeOriginX;
@property (nonatomic) CGFloat badgeOriginY;
// In case of numbers, remove the badge when reaching zero
@property BOOL shouldHideBadgeAtZero;
// Badge has a bounce animation when value changes
@property BOOL shouldAnimateBadge;
/**
 *  垂直显示文本和图片
 *
 *  @param image     图片
 *  @param title     标题
 *  @param stateType UIControlState
 */
- (void) setImageVertical:(UIImage *)image withTitle:(NSString *)title forState:(UIControlState)stateType;
@end
