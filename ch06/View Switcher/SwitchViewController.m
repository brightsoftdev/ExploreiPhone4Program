//
//  SwitchViewController.m
//  View Switcher
//
//  Created by SU,WEN HSIEN on 11/11/23.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "SwitchViewController.h"
#import "BlueViewController.h"
#import "YellowViewController.h"

@implementation SwitchViewController
@synthesize blueViewController,yellowViewController;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
    if (self.blueViewController.view.superview == nil) {
        self.blueViewController = nil;
    } else {
        self.yellowViewController = nil;
    }
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    blueViewController = [[BlueViewController alloc]initWithNibName:@"BlueView" bundle:nil];
    yellowViewController = [[YellowViewController alloc]initWithNibName:@"YellowView" bundle:nil];
    
    [self.view insertSubview:blueViewController.view atIndex:0];
    [blueViewController release];
    
}

- (void)viewDidUnload
{
    [yellowViewController release];
    [blueViewController release];
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)switchView:(id)sender{
    if (self.yellowViewController.view.superview == nil) {
        if (self.yellowViewController == nil) {
            YellowViewController *yellowViewController = [[YellowViewController alloc]initWithNibName:@"YellowView" bundle:nil];
            self.yellowViewController = yellowViewController;
            [yellowViewController release];
        }
        [blueViewController.view removeFromSuperview];
        [self.view insertSubview:yellowViewController atIndex:0];
    } else {
        if (self.blueViewController == nil) {
            BlueViewController *blueViewController = [[BlueViewController alloc]initWithNibName:@"BlueView" bundle:nil];
            self.blueViewController = blueViewController;
            [blueViewController release];
        }
        [yellowViewController.view removeFromSuperview];
        [self.view insertSubview:blueViewController atIndex:0];
    }
}

@end
