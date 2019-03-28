//
//  YQSituationStartViewController.m
//  YQUIKit_Example
//
//  Created by YinQ on 2019/1/15.
//  Copyright © 2019年 richardyq@163.com. All rights reserved.
//

#import "YQSituationStartViewController.h"
#import "YQMealSituationViewController.h"

@interface YQSituationStartViewController ()

@end

@implementation YQSituationStartViewController

@synthesize controllers = _controllers;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"今日情况";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSArray<UIViewController*>*) controllers{
    if (!_controllers) {
        NSMutableArray<UIViewController*>* controllers = [NSMutableArray<UIViewController*> array];
        NSArray<NSString*>* titles = @[@"吃饭情况", @"睡觉情况", @"兴趣学习"];
        NSArray<Class>* classes = @[NSClassFromString(@"YQMealSituationViewController"),
                                    NSClassFromString(@"UIViewController"),
                                    NSClassFromString(@"UIViewController")];
        [titles enumerateObjectsUsingBlock:^(NSString * _Nonnull title, NSUInteger idx, BOOL * _Nonnull stop) {
            Class controllerClass = classes[idx];
            UIViewController* controller = [[controllerClass alloc] initWithNibName:nil bundle:nil];
            controller.title = title;
            [controllers addObject:controller];
        }];
        _controllers = controllers;
    }
    return _controllers;
}

@end
