//
//  BaseViewController.m
//  Pods
//
//  Created by iCooliean on 16/6/12.
//
//

#import "BaseViewController.h"
#import "CLLKit.h"
#define WMVideoSrcName(file) [@"Resource.bundle" stringByAppendingPathComponent:file]
@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)viewWillDisappear:(BOOL)animated
{
    //[SVProgressHUD dismiss];
    [super viewWillDisappear:animated];
}


#pragma mark - LoadingView
-(void)hidenLoadView
{
    [UIView animateWithDuration:0.3 animations:^{
        [self.loadingView removeFromSuperview];
    }];
}

-(void)showLoadView:(UIColor *)tintColor
{
    self.loadingView=[[SDRotationLoopProgressView alloc]initWithFrame:CGRectMake(0, 0, 100 * IPHONE6_WIDTH_SCALE, 100 * IPHONE6_WIDTH_SCALE) backColor:tintColor];
    self.loadingView.center=self.view.center;
    [self.view addSubview: self.loadingView];
    self.loadingView.sd_layout.centerXEqualToView(self.view).centerYEqualToView(self.view);
}

@end
