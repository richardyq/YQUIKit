//
//  YQTextControl.m
//  YQUIKit
//
//  Created by YinQ on 2019/1/17.
//

#import "YQTextControl.h"

@interface YQTextControl ()

@property (nonatomic, strong) UILabel* label;
@property (nonatomic, readonly) NSString* placeholder;
@property (nonatomic, readonly) CGFloat textSize;
@end

@implementation YQTextControl

- (id) initWithPlaceholder:(NSString*) placeholder textSize:(CGFloat) textSize{
    self = [super init];
    if (self) {
        _placeholder = placeholder;
        _textSize = textSize;
        
        [self layoutElements];
    }
    return self;
}

- (void) layoutElements{
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self);
        make.width.lessThanOrEqualTo(self).offset(-5);
        make.height.lessThanOrEqualTo(self).offset(-4);
    }];
}

#pragma mark - settingAndGetting
- (UILabel*) label{
    if (!_label) {
        _label = [self addLabel:[UIColor commonGrayTextColor] textSize:self.textSize];
        _label.text = self.placeholder;
        
    }
    return _label;
}

- (void) setText:(NSString *)text{
    _text = text;
    if (text && text.length > 0) {
        _label.textColor = [UIColor commonTextColor];
        _label.text = text;
    }
    else{
        _label.textColor = [UIColor commonGrayTextColor];
        _label.text = self.placeholder;
    }
}
@end
