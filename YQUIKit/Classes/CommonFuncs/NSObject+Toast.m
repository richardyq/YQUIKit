//
//  NSObject+Toast.m
//  YYKit
//
//  Created by YinQ on 2019/1/8.
//

#import "NSObject+Toast.h"

@implementation NSObject (Toast)

+ (void) showToaster:(NSString*) text{
    [ToastViewController show:text];
}
@end
