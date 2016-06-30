//
//  CLLKitMacro.h
//  Pods
//
//  Created by iCooliean on 16/6/14.
//
//


#import <UIKit/UIKit.h>


#ifndef CLLKitMacro_h
#define CLLKitMacro_h


#ifdef __cplusplus
#define CLL_EXTERN_C_BEGIN  extern "C" {
#define CLL_EXTERN_C_END  }
#else
#define CLL_EXTERN_C_BEGIN
#define CLL_EXTERN_C_END
#endif


CLL_EXTERN_C_BEGIN

//相对iphone6 屏幕比
#define IPHONE6_WIDTH_SCALE    [UIScreen mainScreen].bounds.size.width/375.0f
//重写NSLog,Debug模式下打印日志和当前行数
#if DEBUG
#define CLLLog(FORMAT, ...) fprintf(stderr,"\nfunction:%s line:%d content:\n%s\n", __FUNCTION__, __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define CLLLog(FORMAT, ...) nil
#endif

#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height
#define TABBAR_H self.tabBarController.tabBar.frame.size.height

#define NS_LOG_USER_DEFAULT() NSLog(@"%@",[[NSUserDefaults standardUserDefaults]dictionaryRepresentation])

//系统版本
#define SYSTEM_VERSION   [[UIDevice currentDevice].systemVersion floatValue]

#define HIDDEN_KEYBOARD [[[UIApplication sharedApplication] keyWindow] endEditing:YES];

#define IS_LANDSCAPE (UIInterfaceOrientationIsLandscape([UIApplication sharedApplication].statusBarOrientation))





/**
 Synthsize a weak or strong reference.
 
 Example:
 @strongifycl(self)
 [self doSomething^{
    @strongifycl(self)
    if (!self) return;
 ...
 }];
 
 */
#ifndef weakifycl
#if DEBUG
#if __has_feature(objc_arc)
#define weakifycl(object) autoreleasepool{} __weak __typeof__(object) weak##_##object = object;
#else
#define weakifycl(object) autoreleasepool{} __block __typeof__(object) block##_##object = object;
#endif
#else
#if __has_feature(objc_arc)
#define weakifycl(object) try{} @finally{} {} __weak __typeof__(object) weak##_##object = object;
#else
#define weakifycl(object) try{} @finally{} {} __block __typeof__(object) block##_##object = object;
#endif
#endif
#endif

#ifndef strongifycl
#if DEBUG
#if __has_feature(objc_arc)
#define strongifycl(object) autoreleasepool{} __typeof__(object) object = weak##_##object;
#else
#define strongifycl(object) autoreleasepool{} __typeof__(object) object = block##_##object;
#endif
#else
#if __has_feature(objc_arc)
#define strongifycl(object) try{} @finally{} __typeof__(object) object = weak##_##object;
#else
#define strongifycl(object) try{} @finally{} __typeof__(object) object = block##_##object;
#endif
#endif
#endif



CLL_EXTERN_C_END
#endif
