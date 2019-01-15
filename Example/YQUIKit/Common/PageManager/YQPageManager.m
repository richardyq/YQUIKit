//
//  YQPageManager.m
//  YQUIKit_Example
//
//  Created by YinQ on 2019/1/8.
//  Copyright © 2019年 richardyq@163.com. All rights reserved.
//

#import "YQPageManager.h"
#import "YQInitializationViewController.h"
#import "YQMainStartViewController.h"

@implementation YQPageManager

+ (void) entryInitializationPage{
    UIViewController* startPageController = [[YQInitializationViewController alloc] initWithNibName:nil bundle:nil];
    [[NSObject rootWindow] setRootViewController:startPageController];
}

+ (void) entryMainStartPage{
    YQMainStartViewController* startPage = [[YQMainStartViewController alloc] initWithNibName:nil bundle:nil];
    [[NSObject rootWindow] setRootViewController:startPage];
}

@end
