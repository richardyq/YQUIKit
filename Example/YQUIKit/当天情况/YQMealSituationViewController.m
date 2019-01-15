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
@end

@implementation YQMealSituationViewController

@synthesize radioGroup = _radioGroup;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self layoutElements];
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
}

#pragma mark - settingAndGetting
- (RadioGroup*) radioGroup{
    if (!_radioGroup) {
        _radioGroup = [[RadioGroup alloc] initWithTitles:@[@"快", @"中", @"慢"] orientation:Radio_Horizontal normalImageName:@"radio_button_normal" selectedImageName:@"radio_button_selected"];
        [self.view addSubview:_radioGroup];
    }
    return _radioGroup;
}

@end
