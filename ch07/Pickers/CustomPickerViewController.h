//
//  CustomPickerViewController.h
//  Pickers
//
//  Created by SU,WEN HSIEN on 11/11/26.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface CustomPickerViewController : UIViewController <UIPickerViewDelegate,UIPickerViewDataSource>{
    
    UIPickerView *picker;
    UILabel *winLabel;
    
    NSArray *column1;
    NSArray *column2;
    NSArray *column3;
    NSArray *column4;
    NSArray *column5;
    
    UIButton *button;
    SystemSoundID crunchSounID;
    SystemSoundID winSoundID;
}

@property (nonatomic, retain) IBOutlet UIPickerView *picker;
@property (nonatomic, retain) IBOutlet UILabel *winLabel;

@property (nonatomic, retain) IBOutlet NSArray *column1;
@property (nonatomic, retain) IBOutlet NSArray *column2;
@property (nonatomic, retain) IBOutlet NSArray *column3;
@property (nonatomic, retain) IBOutlet NSArray *column4;
@property (nonatomic, retain) IBOutlet NSArray *column5;

@property (nonatomic, retain) IBOutlet UIButton *button;
@property (nonatomic) SystemSoundID crunchSounID;
@property (nonatomic) SystemSoundID winSoundID;

-(IBAction)spin;

@end
