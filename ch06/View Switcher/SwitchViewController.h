//
//  SwitchViewController.h
//  View Switcher
//
//  Created by SU,WEN HSIEN on 11/11/23.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BlueViewController;
@class YellowViewController;

@interface SwitchViewController : UIViewController{
    
    YellowViewController *yellowViewController;
    BlueViewController *blueViewController;
    
}

@property (nonatomic, retain) YellowViewController *yellowViewController;
@property (nonatomic, retain) BlueViewController *blueViewController;

-(IBAction)switchView:(id)sender;

@end
