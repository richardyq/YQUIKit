//
//  RadioGroup.h
//  YQUIKit
//
//  Created by YinQ on 2019/1/15.
//

#import <UIKit/UIKit.h>
#import "RadioButton.h"

typedef NS_ENUM(NSUInteger, RadioOrientation) {
    Radio_Horizontal,
    Radio_Vertical,
    
};

@interface RadioGroup : UIView

@property (nonatomic, assign) NSInteger selectedIndex;
@property (nonatomic, assign) BOOL editable;

- (id) initWithTitles:(NSArray<NSString*>*) titles
          orientation:(RadioOrientation) orientation
      normalImageName:(NSString*) normalImageName
    selectedImageName:(NSString*) selectedImageName;

@end
