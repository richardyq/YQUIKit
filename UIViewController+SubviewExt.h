//
//  UIViewController+SubviewExt.h
//  YQUIKit
//
//  Created by YinQ on 2019/1/8.
//

#import <UIKit/UIKit.h>

@interface UIViewController (SubviewExt)

- (UILabel*) addLable;

- (UILabel*) addLable:(CGFloat) fontSize textColor:(UIColor*) textColor;

- (UIImageView*) addImageView;
- (UITableView*) addImageView:(NSString*) imageName;
@end
