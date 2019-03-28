//
//  PopViewController.m
//  YYKit
//
//  Created by YinQ on 2019/1/8.
//

#import "PopViewController.h"

@interface PopViewController ()

@end

@implementation PopViewController

@synthesize selectHandler = _selectHandler;

+ (PopViewController*) show{
 
    if ([self hasBeenShown]) {
        return nil;
    }
    UIViewController* topMostController = [NSObject topMostController];
    PopViewController* popContorller = [self createController];
    
    [topMostController addChildViewController:popContorller];
    [topMostController.view addSubview:popContorller.view];
    [popContorller.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(topMostController.view);
    }];
    
    return popContorller;
}

+ (PopViewController*) show:(id) param{
    if ([self hasBeenShown]) {
        return nil;
    }
    UIViewController* topMostController = [NSObject topMostController];
    PopViewController* popContorller = [self createController: param];
    if (!popContorller) {
        return nil;
    }
    [topMostController addChildViewController:popContorller];
    [topMostController.view addSubview:popContorller.view];
    [popContorller.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(topMostController.view);
    }];
    
    return popContorller;
}

+ (PopViewController*) show:(id) param handler:(PopSelectHanler) hanlder{
    if ([self hasBeenShown]) {
        return nil;
    }
    UIViewController* topMostController = [NSObject topMostController];
    PopViewController* popContorller = [self createController: param handler:hanlder];
    if (!popContorller) {
        return nil;
    }
    [topMostController addChildViewController:popContorller];
    [topMostController.view addSubview:popContorller.view];
    [popContorller.view mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(topMostController.view);
    }];
    
    return popContorller;
}

+ (BOOL) hasBeenShown{
    __block BOOL hasBeenShown = NO;
    UIViewController* topMostController = [NSObject topMostController];
    [topMostController.childViewControllers enumerateObjectsUsingBlock:^(__kindof UIViewController * _Nonnull controller, NSUInteger idx, BOOL * _Nonnull stop) {
        if ([controller isKindOfClass:[self class]]) {
            hasBeenShown = YES;
            *stop = YES;
        }
    }];
    return hasBeenShown;
}

- (void) loadView{
    UIControl* closeController = [UIControl new];
    [self setView:closeController];
    [closeController addTarget:self action:@selector(closeControlClicked:) forControlEvents:UIControlEventAllTouchEvents];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self layoutElements];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) layoutElements{
    
}

- (id) initWithParam:(id) param handler:(PopSelectHanler) handler{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        
        _selectHandler = handler;
    }
    return self;
}

+ (PopViewController*) createController{
    PopViewController* controller = [self createController:nil];
    return controller;
}

+ (PopViewController*) createController:(id) param{
    PopViewController* controller = [self createController:param handler:nil ];
    return controller;
}

+ (PopViewController*) createController:(id) param handler:(PopSelectHanler) handler{
    PopViewController* controller = [[self.class alloc] initWithParam:param handler:handler];
    return controller;
}

- (void) closeControlClicked:(id) sender
{
    if(self.manualClose){
        [self closeController];
    }
}

- (void) closeController{
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
}
@end
