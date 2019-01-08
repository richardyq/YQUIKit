//
//  UIImage+Shape.m
//  YYKit
//
//  Created by YinQ on 2019/1/8.
//

#import "UIImage+Shape.h"

@implementation UIImage (Shape)

+ (UIImage*) rectImage:(UIColor*) color size:(CGSize) size{
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width , size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}
@end
