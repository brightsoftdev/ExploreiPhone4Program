//
//  SwapViewController.m
//  Swap
//
//  Created by SU,WEN HSIEN on 11/11/19.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "SwapViewController.h"

@implementation SwapViewController

@synthesize landscape,portrait;
@synthesize landscapeBarButton,landscapeFooButton;
@synthesize portraitBarButton,portraitFooButton;


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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)buttonPredded:(id)sender{
    if (sender == portraitBarButton || sender == landscapeBarButton) {
        portraitFooButton.hidden = YES;
        landscapeFooButton.hidden = YES;
    } else {
        portraitBarButton.hidden = YES;
        landscapeBarButton.hidden = YES;
    }
}

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    if (toInterfaceOrientation == UIInterfaceOrientationPortrait) {
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(0));
        self.view.bounds = CGRectMake(0, 0, 320, 460);
    } else if (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft){
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(0));
        self.view.bounds = CGRectMake(0, 0, 480, 320);
    } else if (toInterfaceOrientation == UIInterfaceOrientationPortraitUpsideDown){
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(0));
        self.view.bounds = CGRectMake(0, 0, 320, 460);
    } else if (toInterfaceOrientation == UIInterfaceOrientationLandscapeRight){
        self.view.transform = CGAffineTransformIdentity;
        self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(0));
        self.view.bounds = CGRectMake(0, 0, 480, 320);
    }
}
@end
