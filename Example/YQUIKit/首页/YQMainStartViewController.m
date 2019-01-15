//
//  YQMainStartViewController.m
//  YQUIKit_Example
//
//  Created by YinQ on 2019/1/15.
//  Copyright © 2019年 richardyq@163.com. All rights reserved.
//

#import "YQMainStartViewController.h"
#import "YQSituationStartViewController.h"
@interface YQMainStartViewController ()

@end

@implementation YQMainStartViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    YQSituationStartViewController* situationStartViewController = [[YQSituationStartViewController alloc] initWithTagColor:[UIColor mainThemeColor]];
    UINavigationController* situationNavigationController = [[UINavigationController alloc] initWithRootViewController:situationStartViewController];
    
    situationNavigationController.navigationBar.translucent = NO;
    
    [self setViewControllers:@[situationNavigationController]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
