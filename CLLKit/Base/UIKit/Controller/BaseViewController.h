//
//  BaseViewController.h
//  Pods
//
//  Created by iCooliean on 16/6/12.
//
//

#import <UIKit/UIKit.h>

@class SDRotationLoopProgressView;
@interface BaseViewController : UIViewController
/* 循环加载视图 */
@property (nonatomic,strong) SDRotationLoopProgressView *loadingView;





#pragma mark - 方法
-(void)hidenLoadView;
-(void)showLoadView:(UIColor *)tintColor;


@end
