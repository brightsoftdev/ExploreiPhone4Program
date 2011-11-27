//
//  SimpleTableViewController.h
//  SimpleTable
//
//  Created by SU,WEN HSIEN on 11/11/28.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableViewController : UIViewController <UITableViewDelegate,UITableViewDataSource>{
    
    NSArray *listData;
}

@property (nonatomic, retain) NSArray *listData;

@end
