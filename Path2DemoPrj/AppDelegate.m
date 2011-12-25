//
//  AppDelegate.m
//  Path2DemoPrj
//
//  Created by Ethan on 11-12-14.
//  Copyright (c) 2011年 Ethan. All rights reserved.
//  
//  个人承接iOS项目, QQ:44633450 / email: gaoyijun@gmail.com
//

#import "AppDelegate.h"
#import "LeftViewController.h"
#import "RightViewController.h"
#import <QuartzCore/QuartzCore.h>
//#import "RootViewController.h"


@implementation AppDelegate

@synthesize window = _window;
@synthesize navController = _navController;
@synthesize leftViewController = _leftViewController;
@synthesize rightViewController = _rightViewController;

- (void)dealloc {
    [_window release];
    [_navController release];
    [_leftViewController release];
    [_rightViewController release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // left view
    
    
    self.leftViewController = [[[LeftViewController alloc] initWithNibName:@"LeftViewController" bundle:nil] autorelease];
    self.leftViewController.view.frame = CGRectMake(0, 
                                                    20, 
                                                    self.leftViewController.view.frame.size.width, 
                                                    self.leftViewController.view.frame.size.height);
    [self.window addSubview:self.leftViewController.view];
    // right view
    self.rightViewController = [[[RightViewController alloc] initWithNibName:@"RightViewController" bundle:nil] autorelease];
    self.rightViewController.view.frame = CGRectMake(320-self.rightViewController.view.frame.size.width, 
                                                     20, 
                                                     self.rightViewController.view.frame.size.width, 
                                                     self.rightViewController.view.frame.size.height);
    [self.window addSubview:self.rightViewController.view];
    // invisible left and right view
    [self.leftViewController setVisible:NO];
    [self.rightViewController setVisible:NO];
    
    // main view (nav)

    [self.window addSubview:self.navController.view];
    UIImage *storyMenuItemImage = [UIImage imageNamed:@"bg-menuitem.png"];
    UIImage *storyMenuItemImagePressed = [UIImage imageNamed:@"bg-menuitem-highlighted.png"];
    
    UIImage *starImage = [UIImage imageNamed:@"icon-star.png"];
    
    QuadCurveMenuItem *starMenuItem1 = [[QuadCurveMenuItem alloc] initWithImage:storyMenuItemImage
                                                               highlightedImage:storyMenuItemImagePressed 
                                                                   ContentImage:starImage 
                                                        highlightedContentImage:nil];
    QuadCurveMenuItem *starMenuItem2 = [[QuadCurveMenuItem alloc] initWithImage:storyMenuItemImage
                                                               highlightedImage:storyMenuItemImagePressed 
                                                                   ContentImage:starImage 
                                                        highlightedContentImage:nil];
    QuadCurveMenuItem *starMenuItem3 = [[QuadCurveMenuItem alloc] initWithImage:storyMenuItemImage
                                                               highlightedImage:storyMenuItemImagePressed 
                                                                   ContentImage:starImage 
                                                        highlightedContentImage:nil];
    QuadCurveMenuItem *starMenuItem4 = [[QuadCurveMenuItem alloc] initWithImage:storyMenuItemImage
                                                               highlightedImage:storyMenuItemImagePressed 
                                                                   ContentImage:starImage 
                                                        highlightedContentImage:nil];
    QuadCurveMenuItem *starMenuItem5 = [[QuadCurveMenuItem alloc] initWithImage:storyMenuItemImage
                                                               highlightedImage:storyMenuItemImagePressed 
                                                                   ContentImage:starImage
                                                        highlightedContentImage:nil];
    QuadCurveMenuItem *starMenuItem6 = [[QuadCurveMenuItem alloc] initWithImage:storyMenuItemImage
                                                               highlightedImage:storyMenuItemImagePressed 
                                                                   ContentImage:starImage
                                                        highlightedContentImage:nil];
       NSArray *menus = [NSArray arrayWithObjects:starMenuItem1, starMenuItem2, starMenuItem3, starMenuItem4, starMenuItem5, starMenuItem6, nil];
    [starMenuItem1 release];
    [starMenuItem2 release];
    [starMenuItem3 release];
    [starMenuItem4 release];
    [starMenuItem5 release];
    [starMenuItem6 release];

    
    QuadCurveMenu *menu = [[QuadCurveMenu alloc] initWithFrame:CGRectMake(10, 10, 200, 200) menus:menus];
    menu.delegate = self;
    [self.navController.view addSubview:menu];
    [menu release];

    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)makeLeftViewVisible {
    self.navController.view.layer.shadowColor = [UIColor blackColor].CGColor;
    self.navController.view.layer.shadowOpacity = 0.4f;
    self.navController.view.layer.shadowOffset = CGSizeMake(-12.0, 1.0f);
    self.navController.view.layer.shadowRadius = 7.0f;
    self.navController.view.layer.masksToBounds = NO;
    [self.leftViewController setVisible:YES];
    [self.rightViewController setVisible:NO];
}

- (void)makeRightViewVisible {
    self.navController.view.layer.shadowColor = [UIColor blackColor].CGColor;
    self.navController.view.layer.shadowOpacity = 0.4f;
    self.navController.view.layer.shadowOffset = CGSizeMake(12.0, 1.0f);
    self.navController.view.layer.shadowRadius = 7.0f;
    self.navController.view.layer.masksToBounds = NO;
    [self.rightViewController setVisible:YES];
    [self.leftViewController setVisible:NO];
}

#pragma mark -

- (void)quadCurveMenu:(QuadCurveMenu *)menu didSelectIndex:(NSInteger)idx
{
    NSLog(@"Select the index : %d",idx);
}

@end
