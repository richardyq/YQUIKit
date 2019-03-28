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

@property (nonatomic, assign) BOOL manualClose;     //是否需要点击空白区域关闭

+ (PopViewController*) show;

+ (PopViewController*) show:(id) param;

+ (PopViewController*) show:(id) param handler:(PopSelectHanler) hanlder;

- (void) closeController;

- (id) initWithParam:(id) param handler:(PopSelectHanler) handler;
@end
