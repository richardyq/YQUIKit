//
//  YQInitializationViewController.m
//  YQUIKit_Example
//
//  Created by YinQ on 2019/1/8.
//  Copyright © 2019年 richardyq@163.com. All rights reserved.
//

#import "YQInitializationViewController.h"
#import "InitializationUtil.h"

@interface YQInitializationViewController ()

@property (nonatomic, strong) UIImageView* backgroundImageView;

@end

@implementation YQInitializationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self layoutElements];
    
    InitializationUtil* initializationUtil = [[InitializationUtil alloc] init];
    [initializationUtil startInitialize];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) layoutElements{
    [self.backgroundImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}



#pragma mark - settingAndGetting
- (UIImageView*) backgroundImageView{
    if (!_backgroundImageView) {
        _backgroundImageView = [self addImageView:@"launchscreen"];
    }
    return _backgroundImageView;
}

@end
