//
//  NSObject+CLLAdd.m
//  Pods
//
//  Created by iCooliean on 16/6/28.
//
//

#import "NSObject+CLLAdd.h"

@implementation NSObject (CLLAdd)
+(BOOL)isNull:(id)thing{
    return (thing == nil
             || [thing isKindOfClass:[NSNull class]]
             || ([thing respondsToSelector:@selector(length)]
                 && [(NSData *)thing length] == 0)
             || ([thing respondsToSelector:@selector(count)]
                 && [(NSArray *)thing count] == 0));
}
@end
