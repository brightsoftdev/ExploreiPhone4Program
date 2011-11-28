//
//  CellsViewController.h
//  Cells
//
//  Created by SU,WEN HSIEN on 11/11/28.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kNameValueTag 1
#define kColorValueTag 2

@interface CellsViewController : UIViewController <UITabBarDelegate,UITableViewDataSource>{
    
    NSArray *computers;
}

@property (nonatomic, retain) NSArray *computers;

@end
