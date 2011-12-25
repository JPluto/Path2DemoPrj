//
//  HomeViewController.h
//  Path2DemoPrj
//
//  Created by Ethan on 11-12-14.
//  Copyright (c) 2011年 Ethan. All rights reserved.
//  
//  个人承接iOS项目, QQ:44633450 / email: gaoyijun@gmail.com
//

#import <UIKit/UIKit.h>
#import "TimeScroller.h"

@interface HomeViewController : UIViewController <TimeScrollerDelegate>{
    CGPoint touchBeganPoint;
    BOOL homeViewIsOutOfStage;
    IBOutlet UITableView *_tableView;

    NSMutableArray *_datasource;
    TimeScroller *_timeScroller;
}

- (IBAction)pushBtnTapped:(id)sender;
- (IBAction)leftBarBtnTapped:(id)sender;
- (IBAction)rightBarBtnTapped:(id)sender;

@end
