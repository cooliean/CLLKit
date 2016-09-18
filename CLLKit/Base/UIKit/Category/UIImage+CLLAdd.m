//
//  UIImage+CLLAdd.m
//  Pods
//
//  Created by iCooliean on 16/9/10.
//
//

#import "UIImage+CLLAdd.h"

@implementation UIImage (CLLAdd)
/**
 *  文件Base64编码
 *
 *  @param path   文件路径
 *  @param isImage 是否图片文件
 *
 *  @return Base64Code
 */
+ (NSString *)encodeToBase64StringWithPath:(NSString *)path isImage:(BOOL)isImage{
    if(!isImage){
        NSFileManager *fm = [NSFileManager defaultManager];
        if([fm fileExistsAtPath:path]){
            NSData *data = [NSData dataWithContentsOfFile:path];
            return [data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
        }else{
            return nil;
        }
    }else{
        UIImage *image = [UIImage imageWithContentsOfFile:path];
        return [UIImageJPEGRepresentation(image, 1.0) base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    }
}


+(UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize{
    return [self imageWithImage:image scaledToSize:newSize compressionQuality:0.5];
}

//对图片尺寸进行压缩--
+(UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize compressionQuality:(CGFloat)quality
{
    // Create a graphics image context
    UIGraphicsBeginImageContext(newSize);
    
    // Tell the old image to draw in this new context, with the desired
    // new size
    [image drawInRect:CGRectMake(0,0,newSize.width,newSize.height)];
    
    // Get the new image from the context
    UIImage* newImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // End the context
    UIGraphicsEndImageContext();
    
    NSData *photo = UIImageJPEGRepresentation(newImage, quality);
    
    // Return the new image.
    return [UIImage imageWithData:photo];
}

+ (NSString *)encodeToBase64String:(UIImage *)image {
    return [UIImagePNGRepresentation(image) base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
}
+ (UIImage *)decodeBase64ToImage:(NSString *)strEncodeData {
    NSData *data = [[NSData alloc]initWithBase64EncodedString:strEncodeData options:NSDataBase64DecodingIgnoreUnknownCharacters];
    return [UIImage imageWithData:data];
}

@end
