//
//  DataPickerViewController.m
//  Pickers
//
//  Created by SU,WEN HSIEN on 11/11/26.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "DataPickerViewController.h"

@implementation DataPickerViewController
@synthesize datePicker;


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
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSDate *now = [[NSDate alloc]init];
    [datePicker setDate:now animated:NO];
    [now release];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    self.datePicker = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)buttonPressed{
    
    NSDate *selected = [datePicker date];
    NSString *message = [[NSString alloc]initWithFormat:@"The Date and time you selected id :%@",selected];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Date and Time Selected" message:message delegate:nil cancelButtonTitle:@"Yes, I did." otherButtonTitles:nil];
    [alert show];
    [alert release];
}

@end
