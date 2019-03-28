//
//  InitializationUtil.m
//  YQUIKit_Example
//
//  Created by YinQ on 2019/1/8.
//  Copyright © 2019年 richardyq@163.com. All rights reserved.
//

#import "InitializationUtil.h"
#import "YQUserLoginViewController.h"

@implementation InitializationUtil

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void) startInitialize{
    if ([self needLogin]) {
        YQUserLoginViewController* loginPage = [[YQUserLoginViewController alloc] initWithNibName:nil bundle:nil];
        
        [[NSObject rootWindow] setRootViewController:loginPage];
        return;
    }
    else{
        [YQPageManager entryMainStartPage];
    }
    
}

- (BOOL) needLogin{
    BOOL needLogin = YES;
    needLogin = NO;
    return needLogin;
}

- (void) startAutoLogin{
    
}

@end
