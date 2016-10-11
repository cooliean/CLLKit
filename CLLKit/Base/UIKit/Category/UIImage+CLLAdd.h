//
//  UIImage+CLLAdd.h
//  Pods
//
//  Created by iCooliean on 16/9/10.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (CLLAdd)

+(UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize;

+(UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize compressionQuality:(CGFloat)quality;

+ (NSString *)encodeToBase64StringWithPath:(NSString *)path isImage:(BOOL)isImage;

+ (NSString *)encodeToBase64String:(UIImage *)image;

+ (UIImage *)decodeBase64ToImage:(NSString *)strEncodeData;


/**
 通过颜色来创建图片

 @param color 图片颜色

 @return {UIImage} 一个点位大小的图片
 */
+ (UIImage *)createImageWithColor: (UIColor*) color;
@end
