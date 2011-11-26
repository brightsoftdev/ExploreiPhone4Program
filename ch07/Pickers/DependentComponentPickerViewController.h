//
//  DependentComponentPickerViewController.h
//  Pickers
//
//  Created by SU,WEN HSIEN on 11/11/26.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kStateComponent 0
#define kZipComponent 1

@interface DependentComponentPickerViewController : UIViewController <UIPickerViewDelegate,

    UIPickerViewDataSource>{
    UIPickerView *picker;
    NSDictionary *stateZips;
    NSArray *states;
    NSArray *zips;
}
@property (nonatomic, retain) IBOutlet UIPickerView *picker;
@property (nonatomic, retain) IBOutlet NSDictionary *stateZips;
@property (nonatomic, retain) IBOutlet NSArray *states;
@property (nonatomic, retain) IBOutlet NSArray *zips;

- (IBAction)buttonPressed;

@end
