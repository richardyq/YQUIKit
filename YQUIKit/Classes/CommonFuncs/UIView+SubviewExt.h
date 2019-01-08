//
//  UIView+SubviewExt.h
//  YQUIKit
//
//  Created by YinQ on 2019/1/8.
//

#import <UIKit/UIKit.h>

@interface UIView (SubviewExt)

/*
 addLabel
 add a UILabel to this view
 */
- (UILabel*) addLabel;
- (UILabel*) addLabel:(UIColor*) textColor textSize:(CGFloat) textSize;

/*
 addImageView
 add a UIImageView to this view
 */
- (UIImageView*) addImageView;
- (UIImageView*) addImageView:(NSString*) imageName;

/*
 addTextField
 add TextField to this view
 */
- (UITextField*) addTextField:(NSString*) placeholder;
- (UITextField*) addTextField:(NSString*) placeholder class:(Class) class;

- (UITextField*) addTextField:(NSString*) placeholder
                    textColor:(UIColor*) textColor
                     textSize:(CGFloat) textSize;
- (UITextField*) addTextField:(NSString*) placeholder
                        class:(Class) class
textColor:(UIColor*) textColor
textSize:(CGFloat) textSize;

/*
 addButton
 add UIButton to this view
 */
- (UIButton*) addButton:(UIButtonType) buttonType;
- (UIButton*) addSolidButton:(UIColor*) color size:(CGSize) size title:(NSString*) title titleSize:(CGFloat) titleSize;
- (UIButton*) addStokeButton:(UIColor*) color size:(CGSize) size title:(NSString*) title titleSize:(CGFloat) titleSize;

@end
