//
//  UIColor+Standard.m
//  YQUIKit
//
//  Created by YinQ on 2019/1/8.
//

#import "UIColor+Standard.h"

@implementation UIColor (Standard)

+ (UIColor*) commonTranseColor{
    UIColor* color = [UIColor colorWithRGB:0x888888 alpha:0.5];
    
    return color;
}

+ (UIColor*) commonBackgroundColor{
    UIColor* color = [UIColor colorWithHexString:@"F8F8F8"];
    return color;
}

//常规控件border颜色
+ (UIColor*) commonControlBorderColor
{
    UIColor* borderColor = [UIColor colorWithHexString:@"DFDFDF"];
    return borderColor;
}

+ (UIColor*) commonTextColor{
    UIColor* color = [UIColor colorWithHexString:@"333333"];
    return color;
}

+ (UIColor*) commonGrayTextColor{
    UIColor* color = [UIColor colorWithHexString:@"999999"];
    return color;
}

+ (UIColor*) commonLightGrayTextColor{
    UIColor* color = [UIColor colorWithHexString:@"BBBBBB"];
    return color;
}
@end
