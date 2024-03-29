//
//  CustomPickerViewController.m
//  Pickers
//
//  Created by SU,WEN HSIEN on 11/11/26.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "CustomPickerViewController.h"

@implementation CustomPickerViewController
@synthesize picker;
@synthesize winLabel;
@synthesize column1,column2,column3,column4,column5;

@synthesize button;
@synthesize crunchSounID,winSoundID;

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
    
    UIImage *seven = [UIImage imageNamed:@"seven.png"];
    UIImage *bar = [UIImage imageNamed:@"bar.png"];
    UIImage *crown = [UIImage imageNamed:@"crown.png"];
    UIImage *cherry = [UIImage imageNamed:@"cherry.png"];
    UIImage *lemon = [UIImage imageNamed:@"lemon.png"];
    UIImage *apple = [UIImage imageNamed:@"apple.png"];
    
    for (int i = 1; i <= 5; i++) {
        
        UIImageView *sevenView = [[UIImageView alloc]initWithImage:seven];
        UIImageView *barView = [[UIImageView alloc]initWithImage:bar];
        UIImageView *crownView = [[UIImageView alloc]initWithImage:crown];
        UIImageView *cherryView = [[UIImageView alloc]initWithImage:cherry];
        UIImageView *lemonView = [[UIImageView alloc]initWithImage:lemon];
        UIImageView *appleView = [[UIImageView alloc]initWithImage:apple];
        
        NSArray *imageViewArray = [[NSArray alloc]initWithObjects:sevenView,barView,crownView,cherryView,lemonView,appleView, nil];
        
        NSString *fieldName = [[NSString alloc]initWithFormat:@"column%d",i];
        
        [self setValue:imageViewArray forKey:fieldName];
        
        [fieldName release];
        [imageViewArray release];
        
        [sevenView release];
        [barView release];
        [crownView release];
        [cherryView release];
        [lemonView release];
        [appleView release];
        
    }
    NSString *path = [[NSBundle mainBundle]pathForResource:@"win" ofType:@"wav"];
    AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:path], &winSoundID);
    path = [[NSBundle mainBundle]pathForResource:@"crunch" ofType:@"wav"];
    AudioServicesCreateSystemSoundID((CFURLRef)[NSURL fileURLWithPath:path], &crunchSounID);
    
    srandom(time(NULL));
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    
    self.picker = nil;
    self.winLabel = nil;
    self.column1 =nil;
    self.column2 =nil;
    self.column3 =nil;
    self.column4 =nil;
    self.column5 =nil;
    self.button = nil;
    
    if (winSoundID) {
        AudioServicesDisposeSystemSoundID(winSoundID),winSoundID = 0;
    }
    if (crunchSounID) {
        AudioServicesDisposeSystemSoundID(crunchSounID),crunchSounID = 0;
    }
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
-(void)showButton{
    button.hidden = NO;
}
-(void)playWinsound{
    AudioServicesPlaySystemSound(winSoundID);
    winLabel.text = @"WIN!";
    [self performSelector:@selector(showButton) withObject:nil afterDelay:1.5];
}
-(IBAction)spin{
    
    BOOL win = NO;
    int numInRow = 1;
    int lastVal = -1;
    for (int i = 0; i < 5; i++) {
        int newValue = rand() % [self.column1 count];
        
        if (newValue == lastVal) {
            numInRow++;
        } else {
            numInRow = 1;
        }
        lastVal = newValue;
        [picker selectRow:newValue inComponent:i animated:YES];
        [picker reloadComponent:i];
        if (numInRow >= 3) {
            win = YES;
        }
    }
    button.hidden = YES;
    AudioServicesPlaySystemSound(crunchSounID);
    
    if (win) {
        [self performSelector:@selector(playWinsound) withObject:nil afterDelay:0.5];
    } else {
        [self performSelector:@selector(showButton) withObject:nil afterDelay:0.5];
        winLabel.text = @"";
    }
}


#pragma mark -
#pragma mark Picker Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return  5;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [self.column1 count];
}

#pragma  mark Picker Delegate Methods
- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view{
    
    NSString *arrayName = [[NSString alloc]initWithFormat:@"column%d",component +1];
    NSArray *array = [self valueForKey:arrayName];
    [arrayName release];
    return [array objectAtIndex:row];
    
}

@end
