//
//  UIView+Boarder.h
//  YQUIKit
//
//  Created by YinQ on 2019/1/8.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, UIViewBorderLineType) {
    UIViewBorderLineTypeTop,
    UIViewBorderLineTypeRight,
    UIViewBorderLineTypeBottom,
    UIViewBorderLineTypeLeft,
};

@interface UIView (Boarder)

- (void) showBoarder;

- (void) showBoarder:(UIViewBorderLineType) boarderType;

- (void) setCornerRadius:(CGFloat) radius;

- (void) setCornerRadius:(CGFloat) radius color:(UIColor*) color boarderwidth:(CGFloat) boarderwidth;

@end
