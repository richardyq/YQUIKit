//
//  YQUserLoginViewController.m
//  YQUIKit_Example
//
//  Created by YinQ on 2019/1/8.
//  Copyright © 2019年 richardyq@163.com. All rights reserved.
//

#import "YQUserLoginViewController.h"

@interface YQUserLoginViewController ()

@property (nonatomic, strong) UIImageView* logoImageView;
@property (nonatomic, strong) UIView* loginInputView;

@property (nonatomic, strong) UITextField* accountTextField;
@property (nonatomic, strong) UITextField* passwordTextField;

@property (nonatomic, strong) UIButton* loginButton;
@end

@implementation YQUserLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self layoutElements];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) layoutElements{
    [self.logoImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(68, 68));
        make.top.equalTo(self.view).offset(75);
        make.centerX.equalTo(self.view);
    }];
    
    [self.loginInputView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.logoImageView.mas_bottom).offset(13);
        make.centerX.equalTo(self.view);
        make.width.equalTo(self.view).offset(-50);
        make.height.mas_equalTo(@64);
    }];
    
    [self.accountTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(self.loginInputView);
    }];
    [self.passwordTextField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.equalTo(self.loginInputView);
        make.top.equalTo(self.accountTextField.mas_bottom);
        make.height.equalTo(self.accountTextField);
    }];
    
    [self.loginButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(self.loginInputView);
        make.height.mas_equalTo(@45);
        make.centerX.equalTo(self.view);
        make.top.equalTo(self.loginInputView.mas_bottom).offset(25);
    }];
}


#pragma mark - settingAndGetting
- (UIImageView*) logoImageView{
    if (!_logoImageView) {
        _logoImageView = [self addImageView:@"login_logo"];
    }
    return _logoImageView;
}

- (UIView*) loginInputView{
    if (!_loginInputView) {
        _loginInputView = [[UIView alloc] init];
        [self.view addSubview:_loginInputView];
        [_loginInputView showBoarder];
        [_loginInputView setCornerRadius:4];
    }
    return _loginInputView;
}

- (UITextField*) accountTextField{
    if (!_accountTextField) {
        _accountTextField = [self addTextField:@"请输入6-15登录账号" textColor:[UIColor commonTextColor] textSize:16];
        [_accountTextField showBoarder:UIViewBorderLineTypeBottom];
    }
    return _accountTextField;
}

- (UITextField*) passwordTextField{
    if (!_passwordTextField) {
        _passwordTextField = [self addTextField:@"请输入6-15登录密码" textColor:[UIColor commonTextColor] textSize:16];
    }
    return _passwordTextField;
}

- (UIButton*) loginButton{
    if (!_loginButton) {
        _loginButton = [self addSolidButton:[UIColor mainThemeColor] size:CGSizeMake(320, 48) title:@"登录" titleSize:16];
        [_loginButton addTarget:self action:@selector(loginButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _loginButton;
}

#pragma mark - button click events
- (void) loginButtonClicked:(id) sender{
    [NSObject showToaster:@"Toast aldskfjaksfdja;sdfj"];
    [YQPageManager entryMainStartPage];
}
@end
