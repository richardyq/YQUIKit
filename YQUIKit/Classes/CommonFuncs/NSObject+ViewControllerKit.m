//
//  NSObject+ViewControllerKit.m
//  YQUIKit
//
//  Created by YinQ on 2019/1/8.
//

#import "NSObject+ViewControllerKit.h"

@implementation NSObject (ViewControllerKit)

+ (id<UIApplicationDelegate>) rootApp{
    UIApplication* app = [UIApplication sharedApplication];
    return app.delegate;
}

+ (UIWindow*) rootWindow{
    UIWindow* window = [self rootApp].window;
    window.backgroundColor = [UIColor whiteColor];
    return window;
}

+ (BOOL) isPad{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPad)
        return YES;
    
    else{
        
        return NO;
        
    }
    return NO;
}

+ (UIViewController*) topMostController
{
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    UIViewController *topMostViewController = keyWindow.rootViewController;
    
    UIViewController* upperViewController = [self upperViewController:topMostViewController];
    while (topMostViewController != upperViewController) {
        topMostViewController = upperViewController;
        upperViewController = [self upperViewController:upperViewController];
    }
    
    return topMostViewController;
}

- (UIViewController*) upperViewController:(UIViewController*) viewController
{
    UIViewController* upperViewController = viewController;
    while (upperViewController.presentedViewController) {
        
        upperViewController = upperViewController.presentedViewController;
    };
    
    if ([upperViewController isKindOfClass:[UINavigationController class]]) {
        upperViewController = [(UINavigationController *)upperViewController visibleViewController];
    } else if ([upperViewController isKindOfClass:[UITabBarController class]]) {
        upperViewController = [(UITabBarController *)upperViewController selectedViewController];
    }
    
    return upperViewController;
}
@end
