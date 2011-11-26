//
//  DoubleComponentPickerViewController.h
//  Pickers
//
//  Created by SU,WEN HSIEN on 11/11/26.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kFillingComponent 0
#define kBreadComponent 1

@interface DoubleComponentPickerViewController : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>{
    
    UIPickerView *dublePicker;
    NSArray *fillingTypes;
    NSArray *breadTypes;
    
}
@property (nonatomic, retain) IBOutlet UIPickerView *dublePicker;
@property (nonatomic, retain) IBOutlet NSArray *fillingTypes;
@property (nonatomic, retain) IBOutlet NSArray *breadTypes;

-(IBAction)buttonPressed;

@end
