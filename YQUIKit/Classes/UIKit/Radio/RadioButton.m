//
//  RadioButton.m
//  YQUIKit
//
//  Created by YinQ on 2019/1/15.
//

#import "RadioButton.h"

@interface RadioButton ()

@property (nonatomic, strong) UIImageView* iconImageView;
@property (nonatomic, strong) UILabel* titleLabel;

@property (nonatomic, readonly) NSString* normalImageName;
@property (nonatomic, readonly) NSString* selectedImageName;

@end

@implementation RadioButton



- (id) initWithTitle:(NSString*) title
     normalImageName:(NSString*) normalImageName
   selectedImageName:(NSString*) selectedImageName{
    self = [super init];
    if (self) {
        self.titleLabel.text = title;
        _normalImageName = normalImageName;
        _selectedImageName = selectedImageName;
        
        [self layoutElements];
    }
    return self;
}

- (void) layoutElements{
    [self.iconImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(15, 15));
        make.centerY.equalTo(self);
        make.left.equalTo(self).offset(7.5);
    }];
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.iconImageView.mas_right).offset(7);
        make.centerY.equalTo(self);
        make.right.lessThanOrEqualTo(self).offset(-3);
    }];
}

#pragma mark - settingAndGetting
- (UIImageView*) iconImageView{
    if (!_iconImageView) {
        _iconImageView = [self addImageView:self.normalImageName];
    }
    return _iconImageView;
}

- (UILabel*) titleLabel{
    if (!_titleLabel) {
        _titleLabel = [self addLabel];
        _titleLabel.font = [UIFont systemFontOfSize:14];
        _titleLabel.textColor = [UIColor commonTextColor];
    }
    return _titleLabel;
}

- (void) setSelected:(BOOL)selected{
    [super setSelected:selected];
    if (selected) {
        [self.iconImageView setImage:[UIImage imageNamed:self.selectedImageName]];
    }
    else{
        [self.iconImageView setImage:[UIImage imageNamed:self.normalImageName]];
    }
}

@end
