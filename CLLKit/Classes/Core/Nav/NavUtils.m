//
//  NavUtils.m
//  Pods
//
//  Created by iCooliean on 16/6/12.
//
//

#import "NavUtils.h"

@implementation NavUtils
+(void)setupNavigation:(UIColor *)barBackColor textColor:(UIColor *)textColor backImage:(UIImage *)backImage{
    [[UIBarButtonItem appearanceWhenContainedIn:[UINavigationBar class], nil] setTintColor:barBackColor];
    
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backImage forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
    
    
    [[UINavigationBar appearanceWhenContainedIn:[UINavigationController class], nil] setBarTintColor:barBackColor];
    [[UINavigationBar appearanceWhenContainedIn:[UINavigationController class], nil] setTitleTextAttributes:@{NSForegroundColorAttributeName: textColor}];

    
    [[UINavigationBar appearance] setBarTintColor:barBackColor];
    [[UINavigationBar appearance] setTintColor:textColor];
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName: textColor}];
}
@end
