//
//  UIViewController+SubViewExt.h
//  YQUIKit
//
//  Created by YinQ on 2019/1/8.
//

#import <UIKit/UIKit.h>

@interface UIViewController (SubViewExt)

/*
 addLabel
 add a UILabel to this viewcontroller
 */
- (UILabel*) addLabel;
- (UILabel*) addLabel:(UIColor*) textColor textSize:(CGFloat) textSize;

/*
 addImageView
 add a UIImageView to this viewcontroller
 */
- (UIImageView*) addImageView;
- (UIImageView*) addImageView:(NSString*) imageName;

/*
 addTextField
 add TextField to this viewcontroller
 */
- (UITextField*) addTextField:(NSString*) placeholder;
- (UITextField*) addTextField:(NSString*) placeholder
                    textColor:(UIColor*) textColor
                     textSize:(CGFloat) textSize;

/*
 addButton
 add UIButton to this viewcontroller
 */
- (UIButton*) addButton:(UIButtonType) buttonType;
- (UIButton*) addSolidButton:(UIColor*) color size:(CGSize) size title:(NSString*) title titleSize:(CGFloat) titleSize;
- (UIButton*) addStokeButton:(UIColor*) color size:(CGSize) size title:(NSString*) title titleSize:(CGFloat) titleSize;
@end
