//
//  UIViewController+SubviewExt.m
//  YQUIKit
//
//  Created by YinQ on 2019/1/8.
//

#import "UIViewController+SubviewExt.h"

@implementation UIViewController (SubviewExt)

- (UILabel*) addLable{
    UILabel* label = [[UILabel alloc] init];
    [self.view addSubview:label];
    
    return label;
}

- (UILabel*) addLable:(CGFloat) fontSize textColor:(UIColor*) textColor{
    UILabel* label = [self addLable];
    label.font = [UIFont systemFontOfSize:fontSize];
    label.textColor = textColor;
    return label;
}

- (UIImageView*) addImageView{
    UIImageView* imageView = [[UIImageView alloc] init];
    [self.view addSubview:imageView];
    
    return imageView;
}

- (UIImageView*) addImageView:(NSString*) imageName{
    UIImageView* imageView = [self addImageView];
    imageView.image = [UIImage imageNamed:imageName];
    return imageView;
}
@end
