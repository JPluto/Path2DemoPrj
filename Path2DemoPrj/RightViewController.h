//
//  RightViewController.h
//  Path2DemoPrj
//
//  Created by Ethan on 11-12-14.
//  Copyright (c) 2011年 Ethan. All rights reserved.
//  
//  个人承接iOS项目, QQ:44633450 / email: gaoyijun@gmail.com
//

#import <UIKit/UIKit.h>

@interface RightViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    NSArray *tableTitles;
}

- (void)setVisible:(BOOL)visible;

@end
