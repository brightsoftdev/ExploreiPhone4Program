//
//  ButtonFunViewController.h
//  ButtonFun
//
//  Created by SU,WEN HSIEN on 11/11/18.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ButtonFunViewController : UIViewController{
    
    UILabel *statusText;
}
@property (nonatomic, retain) IBOutlet UILabel *statusText;
-(IBAction)buttonPressed:(id)sender;

@end
