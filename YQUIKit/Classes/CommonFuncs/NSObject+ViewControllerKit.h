//
//  NSObject+ViewControllerKit.h
//  YQUIKit
//
//  Created by YinQ on 2019/1/8.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSObject (ViewControllerKit)

+ (id<UIApplicationDelegate>) rootApp;

+ (UIWindow*) rootWindow;

+ (BOOL) isPad;

- (UIViewController*) topMostController;

@end
