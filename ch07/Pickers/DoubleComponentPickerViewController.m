//
//  DoubleComponentPickerViewController.m
//  Pickers
//
//  Created by SU,WEN HSIEN on 11/11/26.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "DoubleComponentPickerViewController.h"

@implementation DoubleComponentPickerViewController
@synthesize dublePicker;
@synthesize fillingTypes;
@synthesize breadTypes;

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
    NSArray *fillingArray = [[NSArray alloc]initWithObjects:@"Ham",@"Turkey",@"Peanut Butter",@"Tuna Salad",@"Nutella",@"Roast Beef",@"Vegemite", nil];
    self.fillingTypes = fillingArray;
    [fillingTypes release];
    
    NSArray *breadArray = [[NSArray alloc]initWithObjects:@"Whole Wheat",@"Rye",@"Sourdough",@"Seven Grain", nil];
    self.breadTypes = breadArray;
    [breadTypes release];
    
    // Do any additional setup after loading the view from its nib.
}

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

- (IBAction)buttonPressed{
    
    NSInteger fillingRow = [dublePicker selectedRowInComponent:kFillingComponent];
    NSInteger breadRow = [dublePicker selectedRowInComponent:kBreadComponent];
    NSString *filling = [fillingTypes objectAtIndex:fillingRow];
    NSString *bread = [breadTypes objectAtIndex:breadRow];
    NSString *message = [[NSString alloc]initWithFormat:@"Your %@ on %@ bread will be right up.",filling,bread];
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Thank you for your order" message:message delegate:nil cancelButtonTitle:@"Great!" otherButtonTitles: nil];
    [alert show];
    [alert release];
    [message release];
    
}

#pragma mark -
#pragma mark Picker Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return  2;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == kBreadComponent) {
        return [self.breadTypes count];
    } else {
        return [self.fillingTypes count];
    }
}

#pragma  mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component == kBreadComponent) {
        return [self.breadTypes objectAtIndex:row];
    } else {
        return [self.fillingTypes objectAtIndex:row];
    }
}
    
@end
