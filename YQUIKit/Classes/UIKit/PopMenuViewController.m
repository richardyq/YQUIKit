//
//  PopMenuViewController.m
//  YQUIKit
//
//  Created by YinQ on 2019/3/28.
//

#import "PopMenuViewController.h"

const CGFloat kPopMenuItemHeight = 40;

@implementation PopMenuParam

@synthesize titles = _titles;
@synthesize width = _width;
@synthesize startPos = _startPos;

- (id) initWithTitles:(NSArray<NSString*>*) titles
                                width:(CGFloat) width
                             startPos:(CGPoint) startPos
{
    self = [super init];
    if (self) {
        _titles = titles;
        _width = width;
        _startPos = startPos;
        _maxRows = 5;
        _menuFontSize = 12;
    }
    return self;
}


- (instancetype)initWithTitles:(NSArray<NSString*>*)titles
                         width:(CGFloat) width
                      startPos:(CGPoint) startPos
                       maxRows:(NSInteger) maxRows{
    self = [super init];
    if (self) {
        _titles = titles;
        _width = width;
        _startPos = startPos;
        _maxRows = maxRows;
        _menuFontSize = 12;
    }
    return self;
}
@end

@interface PopMenuViewController ()
<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, readonly) PopMenuParam* menuParam;

@property (nonatomic, strong) UITableView* tableview;

- (void) putMenuParam:(PopMenuParam *)menuParam;
@end

@implementation PopMenuViewController



+ (PopViewController*) showWithTitles:(NSArray<NSString*>*) titles
                                width:(CGFloat) width
                             startPos:(CGPoint) startPos
{
    PopMenuParam* param = [[PopMenuParam alloc] initWithTitles:titles width:width startPos:startPos];
    
    PopMenuViewController* popMenu =(PopMenuViewController*)[self show:param];
    
//    [popMenu putMenuParam:param];
    return popMenu;
}


- (id) initWithParam:(id) param handler:(PopSelectHanler) handler{
    self = [super initWithParam:param handler:handler];
    if (self) {
        _menuParam = (PopMenuParam*) param;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor commonTranseColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) layoutElements{
    CGFloat tableHeight = kPopMenuItemHeight * self.menuParam.titles.count;
    CGFloat maxHeight = kPopMenuItemHeight * self.menuParam.maxRows;
    if(tableHeight > maxHeight){
        tableHeight = maxHeight;
    }
    
    [self.tableview mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(self.menuParam.width, tableHeight);
        make.left.mas_equalTo(self.menuParam.startPos.x);
        make.top.mas_equalTo(self.menuParam.startPos.y);
    }];
}

#pragma mark - settingAndGetting



- (UITableView*) tableview{
    if(!_tableview){
        _tableview = [UITableView new];
        [self.view addSubview:_tableview];
        _tableview.delegate = self;
        _tableview.dataSource = self;
    }
    return _tableview;
}

#pragma mark - tableview data source
- (NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.menuParam.titles.count;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:@"PopMenuTableViewCell"];
    if(!cell){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"PopMenuTableViewCell"];
        cell.textLabel.font = [UIFont systemFontOfSize:self.menuParam.menuFontSize];
        cell.textLabel.textColor = [UIColor commonTextColor];
    }
    NSString* title = self.menuParam.titles[indexPath.row];
    cell.textLabel.text = title;
    
    return cell;
}

#pragma mark - tableview delegate
- (CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return kPopMenuItemHeight;
}

@end
