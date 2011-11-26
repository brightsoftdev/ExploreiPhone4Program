//
//  PickersAppDelegate.h
//  Pickers
//
//  Created by SU,WEN HSIEN on 11/11/26.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickersAppDelegate : NSObject <UIApplicationDelegate>{

    UITabBarController *rootController;
    
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *rootController;

@end
