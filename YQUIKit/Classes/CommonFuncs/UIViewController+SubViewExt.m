//
//  UIViewController+SubViewExt.m
//  YQUIKit
//
//  Created by YinQ on 2019/1/8.
//

#import "UIViewController+SubViewExt.h"

@implementation UIViewController (SubViewExt)

- (UILabel*) addLabel{
    UILabel* label = [[UILabel alloc] init];
    [self.view addSubview:label];
    return label;
}

- (UILabel*) addLabel:(UIColor*) textColor textSize:(CGFloat) textSize{
    UILabel* label = [self addLabel];
    label.textColor = textColor;
    label.font = [UIFont systemFontOfSize:textSize];
    
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

- (UITextField*) addTextField:(NSString*) placeholder{
    UITextField* textfield = [[UITextField alloc] init];
    [self.view addSubview:textfield];
    textfield.placeholder = placeholder;
    
    return textfield;
}

- (UITextField*) addTextField:(NSString*) placeholder
                    textColor:(UIColor*) textColor
                     textSize:(CGFloat) textSize{
    UITextField* textfield = [self addTextField:placeholder];
    textfield.textColor = textColor;
    textfield.font = [UIFont systemFontOfSize:textSize];
    return textfield;
}

- (UIButton*) addButton:(UIButtonType) buttonType{
    UIButton* button = [UIButton buttonWithType:buttonType];
    [self.view addSubview:button];
    
    return button;
}

- (UIButton*) addSolidButton:(UIColor*) color size:(CGSize) size title:(NSString*) title titleSize:(CGFloat) titleSize{
    UIButton* button = [self addButton:UIButtonTypeCustom];
    UIImage* bgImage = [UIImage rectImage:color size:size];
    [button setBackgroundImage:bgImage forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:titleSize];
    [button setCornerRadius:4];
    return button;
}

- (UIButton*) addStokeButton:(UIColor*) color size:(CGSize) size title:(NSString*) title titleSize:(CGFloat) titleSize{
    UIButton* button = [self addButton:UIButtonTypeCustom];
    UIImage* bgImage = [UIImage rectImage:[UIColor whiteColor] size:size];
    [button setBackgroundImage:bgImage forState:UIControlStateNormal];
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:color forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:titleSize];
    [button setCornerRadius:4 color:color boarderwidth:1];

    return button;
}

@end
