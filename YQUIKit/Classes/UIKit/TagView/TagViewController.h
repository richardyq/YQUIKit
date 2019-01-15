//
//  TagViewController.h
//  YQUIKit
//
//  Created by YinQ on 2019/1/15.
//

#import <UIKit/UIKit.h>
#import "TagView.h"

@interface TagViewController : UIViewController

@property (nonatomic, strong) NSArray<UIViewController*>* controllers;


- (id) initWithTagColor:(UIColor*) color;

@end
