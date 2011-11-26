//
//  SingleComponentPickerViewController.h
//  Pickers
//
//  Created by SU,WEN HSIEN on 11/11/26.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SingleComponentPickerViewController : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>{
    
    UIPickerView *singlePicker;
    NSArray *picketData;
    
}
@property (nonatomic, retain) IBOutlet UIPickerView *singlePicker;
@property (nonatomic, retain) IBOutlet NSArray *picketData;

-(IBAction)buttonPressde;

@end
