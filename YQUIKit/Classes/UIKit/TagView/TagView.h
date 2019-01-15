//
//  TagView.h
//  YQUIKit
//
//  Created by YinQ on 2019/1/15.
//

#import <UIKit/UIKit.h>

@interface TagView : UIView

@property (nonatomic, assign) NSInteger selectIndex;

- (instancetype)initWithSelectedColor:(UIColor*) color;
- (void) createTagCells:(NSArray<NSString*>*) titles;


@end
