//
//  VerticallyAlignedLabel.h
//  Pods
//
//  Created by iCooliean on 16/6/21.
//
//

#import <UIKit/UIKit.h>
typedef enum VerticalAlignment {
    VerticalAlignmentTop,
    VerticalAlignmentMiddle,
    VerticalAlignmentBottom,
} VerticalAlignment;
@interface VerticallyAlignedLabel : UILabel
@property (nonatomic, assign) VerticalAlignment verticalAlignment;
@end
