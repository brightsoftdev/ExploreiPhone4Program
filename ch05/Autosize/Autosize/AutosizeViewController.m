//
//  AutosizeViewController.m
//  Autosize
//
//  Created by SU,WEN HSIEN on 11/11/19.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "AutosizeViewController.h"

@implementation AutosizeViewController
@synthesize button1,button2,button3,button4,button5,button6;

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [self.button1 release];
    [self.button2 release];
    [self.button3 release];
    [self.button4 release];
    [self.button5 release];
    [self.button6 release];
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    
    //不支援自動旋轉
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
    
    //支援向左自動旋轉，home鍵在左
    //return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft);
    
    //支援向右自動旋轉，home鍵在右
    //return (interfaceOrientation == UIInterfaceOrientationLandscapeRight);
    
    //支援上下顛倒自動旋轉
    //return (interfaceOrientation == UIInterfaceOrientationPortraitUpsideDown);
    
    //不支援上下顛倒的值向模式
    //return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    
    //自動旋轉至任何方向
    return YES;
    
}
//旋轉時重建檢視
-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    if (toInterfaceOrientation == UIInterfaceOrientationPortrait || toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown) {
        button1.frame = CGRectMake(20, 20, 125, 125);
        button2.frame = CGRectMake(175, 20, 125, 125);
        button3.frame = CGRectMake(20, 168, 125, 125);
        button4.frame = CGRectMake(175, 168, 125, 125);
        button5.frame = CGRectMake(20, 315, 125, 125);
        button6.frame = CGRectMake(175, 315, 125, 125);
    } else {
        button1.frame = CGRectMake(20, 20, 125, 125);
        button2.frame = CGRectMake(20, 155, 125, 125);
        button3.frame = CGRectMake(177, 20, 125, 125);
        button4.frame = CGRectMake(177, 155, 125, 125);
        button5.frame = CGRectMake(328, 20, 125, 125);
        button6.frame = CGRectMake(328, 155, 125, 125);
    }
}
@end
