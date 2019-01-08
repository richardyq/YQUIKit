//
//  ToastViewController.m
//  YQUIKit
//
//  Created by YinQ on 2019/1/8.
//

#import "ToastViewController.h"

@interface ToastViewController ()

@property (nonatomic, readonly) NSString* toastText;
@property (nonatomic, strong) UIView* toastView;
@property (nonatomic, strong) UILabel* toastLabel;

@end

@implementation ToastViewController

- (id) initWithToast:(NSString*) text{
    self = [super initWithNibName:nil bundle:nil];
    if (self) {
        _toastText = text;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self performSelector:@selector(closeController) withObject:nil afterDelay:2.5];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) layoutElements{
    [self.toastView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(self.view);
        make.bottom.equalTo(self.view).offset(-35);
    }];
    
    [self.toastLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.toastView).insets(UIEdgeInsetsMake(5, 10, 5, 10));
    }];
}

+ (PopViewController*) createController:(id) param{
    if (!param || ![param isKindOfClass:[NSString class]]) {
        return nil;
    }
    ToastViewController* controller = [[ToastViewController alloc] initWithToast:(NSString*)param];
    
    return controller;
}



#pragma mark - settingAndGetting
- (UIView*) toastView{
    if(!_toastView){
        _toastView = [[UIView alloc] init];
        [self.view addSubview:_toastView];
        _toastView.backgroundColor = [UIColor colorWithHexString:@"4F4F4F"];
        [_toastView setCornerRadius:4];
    }
    return _toastView;
}

- (UILabel*) toastLabel{
    if (!_toastLabel) {
        _toastLabel = [self.toastView addLabel:[UIColor whiteColor] textSize:13];
        _toastLabel.text = self.toastText;
        _toastLabel.numberOfLines = 0;
    }
    return _toastLabel;
}

@end
