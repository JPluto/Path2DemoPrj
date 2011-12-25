//
//  AppDelegate.h
//  Path2DemoPrj
//
//  Created by Ethan on 11-12-14.
//  Copyright (c) 2011年 Ethan. All rights reserved.
//  
//  个人承接iOS项目, QQ:44633450 / email: gaoyijun@gmail.com
//

#import <UIKit/UIKit.h>
#import "QuadCurveMenu.h"

@class LeftViewController;
@class RightViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, QuadCurveMenuDelegate> {
    
}

@property (retain, nonatomic) IBOutlet UIWindow *window;
@property (retain, nonatomic) IBOutlet UINavigationController *navController;

@property (retain, nonatomic) LeftViewController *leftViewController;
@property (retain, nonatomic) RightViewController *rightViewController;

- (void)makeLeftViewVisible;
- (void)makeRightViewVisible;

@end
