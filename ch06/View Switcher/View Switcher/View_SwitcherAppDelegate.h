//
//  View_SwitcherAppDelegate.h
//  View Switcher
//
//  Created by SU,WEN HSIEN on 11/11/23.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SwitchViewController;

@interface View_SwitcherAppDelegate : NSObject <UIApplicationDelegate>{
    UIWindow *window;
    SwitchViewController *switchViewControllwe;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet SwitchViewController *switchViewController;

@end
