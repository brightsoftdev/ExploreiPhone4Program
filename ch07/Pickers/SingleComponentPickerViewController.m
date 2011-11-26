//
//  SingleComponentPickerViewController.m
//  Pickers
//
//  Created by SU,WEN HSIEN on 11/11/26.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "SingleComponentPickerViewController.h"

@implementation SingleComponentPickerViewController
@synthesize picketData;
@synthesize singlePicker;

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
    NSArray *array = [[NSArray alloc]initWithObjects:@"Luke",@"Leia",@"Han",@"Chewbacca",@"Artoo",@"Threepio",@"Lando", nil];
    self.picketData = array;
    [array release];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    self.singlePicker = nil;
    self.picketData = nil;
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

-(IBAction)buttonPressde{
    
    NSInteger row = [singlePicker selectedRowInComponent:0];
    NSString *selected = [picketData objectAtIndex:row];
    NSString *title = [[NSString alloc]initWithFormat:@"You selected %@!",selected];
    UIAlertView *alert =[[UIAlertView alloc]initWithTitle:title message:@"Thank you for choosing" delegate:nil cancelButtonTitle:@"You're Welcome" otherButtonTitles: nil];
    [alert show];
    [alert release];
    [title release];
    
}

#pragma mark -
#pragma mark Picker Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return  1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [picketData count];
}

#pragma  mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [picketData objectAtIndex:row];
}
@end
