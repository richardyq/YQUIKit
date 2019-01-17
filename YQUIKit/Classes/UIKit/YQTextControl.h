//
//  YQTextControl.h
//  YQUIKit
//
//  Created by YinQ on 2019/1/17.
//

#import <UIKit/UIKit.h>

@interface YQTextControl : UIControl

@property (nonatomic, strong) NSString* text;

- (id) initWithPlaceholder:(NSString*) placeholder textSize:(CGFloat) textSize;

@end
