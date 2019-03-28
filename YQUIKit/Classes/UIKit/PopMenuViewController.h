//
//  PopMenuViewController.h
//  YQUIKit
//
//  Created by YinQ on 2019/3/28.
//

#import "PopViewController.h"

@interface PopMenuParam : NSObject

@property (nonatomic, readonly) NSArray<NSString*>* titles;
@property (nonatomic, readonly) CGFloat width;
@property (nonatomic, readonly) CGPoint startPos;
@property (nonatomic, assign) NSInteger maxRows;
@property (nonatomic, assign) CGFloat menuFontSize;

- (id) initWithTitles:(NSArray<NSString*>*) titles
                                width:(CGFloat) width
                             startPos:(CGPoint) startPos;

- (instancetype)initWithTitles:(NSArray<NSString*>*)titles
                         width:(CGFloat) width
                      startPos:(CGPoint) startPos
                       maxRows:(NSInteger) maxRows;
@end

@interface PopMenuViewController : PopViewController


+ (PopViewController*) showWithTitles:(NSArray<NSString*>*) titles
                                width:(CGFloat) width
                             startPos:(CGPoint) startPos;

@end
