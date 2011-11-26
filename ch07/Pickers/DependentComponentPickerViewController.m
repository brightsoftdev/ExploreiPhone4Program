//
//  DependentComponentPickerViewController.m
//  Pickers
//
//  Created by SU,WEN HSIEN on 11/11/26.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "DependentComponentPickerViewController.h"

@implementation DependentComponentPickerViewController
@synthesize picker;
@synthesize states;
@synthesize stateZips;
@synthesize zips;

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
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *plistPath = [bundle pathForResource:@"statedictionary" ofType:@"plist"];
    NSDictionary *dictionary = [[NSDictionary alloc]initWithContentsOfFile:plistPath];
    
    self.stateZips = dictionary;
    [dictionary release];
    
    NSArray *components = [self.stateZips allKeys];
    NSArray *sorted = [components sortedArrayUsingSelector:@selector(compare:)];
    self.states = sorted;
    
    NSString *selectedState = [self.states objectAtIndex:0];
    NSArray *array = [stateZips objectForKey:selectedState];
    self.zips = array;
    
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    self.picker = nil;
    self.stateZips = nil;
    self.states = nil;
    self.zips = nil;
    
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
    NSInteger stateRow = [picker selectedRowInComponent:kStateComponent];
    NSInteger zipRow = [picker selectedRowInComponent:kZipComponent];
    
    NSString *state = [self.states objectAtIndex:stateRow];
    NSString *zip = [self.zips objectAtIndex:zipRow];
    
    NSString *title = [[NSString alloc]initWithFormat:@"You select zip code %@.",zip];
    NSString *message = [[NSString alloc]initWithFormat:@"%@ is in %@",zip,state];
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:title message:message delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
    [alert release];
    [title release];
    [message release];
}

#pragma mark -
#pragma mark Picker Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return  2;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    if (component == kStateComponent) {
        return [self.states count];
    } else {
        return [self.zips count];
    }
}

#pragma  mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    if (component == kStateComponent) {
        return [self.states objectAtIndex:row];
    } else {
        return [self.zips objectAtIndex:row];
    }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    if (component == kStateComponent) {
        NSString *selectedState = [self.states objectAtIndex:row];
        NSArray *array = [stateZips objectForKey:selectedState];
        self.zips = array;
        [picker selectRow:0 inComponent:kZipComponent animated:YES];
        [picker reloadComponent:kZipComponent];
    }
}
-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
    if (component == kZipComponent) {
        return 90;
    }
    return 200;
}
@end
