//
//  ButtonFunViewController.m
//  ButtonFun
//
//  Created by SU,WEN HSIEN on 11/11/18.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "ButtonFunViewController.h"

@implementation ButtonFunViewController
//自動建立存取子與變更子
@synthesize statusText;

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
    self.statusText =nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(void)dealloc{
    
    [statusText release];
    [super dealloc];
    
}

-(IBAction)buttonPressed:(id)sender{
    
    //從sender抓取被點選按鈕的標題
        //正常(normal)：表示控制項有作用但目前沒有備使用。
        //反白(highlighted)：表示控制項正在被點選或使用中。
        //停用(disabled)：表示控制項未啓用也不能使用。
        //選用(selected)：表示控制項目前被選取。
    NSString *title = [sender titleForState:UIControlStateNormal];
    //建立新字串
    NSString *newText = [[NSString alloc]initWithFormat:@"%@ button pressed.",title];
    //設定標籤文字
    //[statusText setText:newText];
    statusText.text = newText;
    //釋放字串
    [newText release];
    
}
@end
