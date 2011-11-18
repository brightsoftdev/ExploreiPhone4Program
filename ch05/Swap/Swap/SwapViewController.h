//
//  SwapViewController.h
//  Swap
//
//  Created by SU,WEN HSIEN on 11/11/19.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

//定義轉換角度與弧度
#define degreesToRadians(x) (M_PI * (x) /180.0)

@interface SwapViewController : UIViewController{
    
    UIView *landscape;
    UIView *portrait;
    
    //Foo
    UIButton *landscapeFooButton;
    UIButton *portraitFooButton;
    
    //Bar
    UIButton *landscapeBarButton;
    UIButton *portraitBarButton;
    
}

@property (nonatomic,retain) UIView *landscape;
@property (nonatomic,retain) UIView *portrait;

@property (nonatomic, retain) IBOutlet UIButton *landscapeFooButton;
@property (nonatomic, retain) IBOutlet UIButton *portraitFooButton;
@property (nonatomic, retain) IBOutlet UIButton *landscapeBarButton;
@property (nonatomic, retain) IBOutlet UIButton *portraitBarButton;

-(IBAction)buttonPredded:(id)sender;

@end
