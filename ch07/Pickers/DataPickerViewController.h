//
//  DataPickerViewController.h
//  Pickers
//
//  Created by SU,WEN HSIEN on 11/11/26.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DataPickerViewController : UIViewController{
    
    UIDatePicker *datePicker;
    
}
@property (nonatomic, retain) IBOutlet UIDatePicker *datePicker;

-(IBAction)buttonPressed;

@end
