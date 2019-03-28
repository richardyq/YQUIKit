//
//  YQMealSituationViewController.m
//  YQUIKit_Example
//
//  Created by YinQ on 2019/1/15.
//  Copyright © 2019年 richardyq@163.com. All rights reserved.
//

#import "YQMealSituationViewController.h"

@interface YQMealSituationViewController ()

@property (nonatomic, readonly) RadioGroup* radioGroup;
@property (nonatomic, readonly) YQTextControl* textControl;

@end

@implementation YQMealSituationViewController

@synthesize radioGroup = _radioGroup;
@synthesize textControl = _textControl;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self layoutElements];
    
    self.textControl.text = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) layoutElements{
    [self.radioGroup mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.view).offset(57);
        make.height.mas_equalTo(@35);
        make.width.equalTo(self.view).offset(-188);
    }];
    
    [self.textControl mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.radioGroup.mas_bottom).offset(14);
        make.size.mas_equalTo(CGSizeMake(80, 25));
    }];
}

#pragma mark - settingAndGetting
- (RadioGroup*) radioGroup{
    if (!_radioGroup) {
        _radioGroup = [[RadioGroup alloc] initWithTitles:@[@"快", @"中", @"慢"] orientation:Radio_Horizontal normalImageName:@"radio_button_normal" selectedImageName:@"radio_button_selected"];
        [self.view addSubview:_radioGroup];
    }
    return _radioGroup;
}

- (YQTextControl*) textControl{
    if (!_textControl) {
        _textControl = [[YQTextControl alloc] initWithPlaceholder:@"选择日期" textSize:13];
        [self.view addSubview:_textControl];
        [_textControl addTarget:self action:@selector(onTextControlClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _textControl;
}

#pragma mark - control events
- (void) onTextControlClicked:(id) sender{
    NSArray<NSString*>* titles = @[@"吃得好", @"吃的一般", @"吃的不好"];
    CGRect controlRect = [self.textControl convertRect:self.textControl.bounds toView:[NSObject topMostController].view];
    CGPoint pt = controlRect.origin;
    pt.y += controlRect.size.height;
    PopMenuViewController* menuController = [PopMenuViewController showWithTitles:titles width:self.textControl.width startPos:pt];
    
    [menuController setManualClose:YES];
    
}

@end
