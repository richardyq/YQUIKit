//
//  PopViewController.h
//  YYKit
//
//  Created by YinQ on 2019/1/8.
//

#import <UIKit/UIKit.h>

typedef void(^PopSelectHanler)(id ret);

@interface PopViewController : UIViewController

@property (nonatomic, readonly) PopSelectHanler selectHandler;

+ (void) show;

+ (void) show:(id) param;

+ (void) show:(id) param handler:(PopSelectHanler) hanlder;

- (void) closeController;

- (id) initWithParam:(id) param handler:(PopSelectHanler) handler;
@end
