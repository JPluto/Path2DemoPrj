//
//  LeftViewController.m
//  Path2DemoPrj
//
//  Created by Ethan on 11-12-14.
//  Copyright (c) 2011年 Ethan. All rights reserved.
//  
//  个人承接iOS项目, QQ:44633450 / email: gaoyijun@gmail.com
//

#import "LeftViewController.h"

@implementation LeftViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    tableTitles = [[NSArray arrayWithObjects:@"Home",@"Path",@"Activity",@"Settings",@"Sign Out",nil] retain];
    [super viewDidLoad];
}

- (void)viewDidUnload {
    [tableTitles release];
    tableTitles = nil;
    [super viewDidUnload];
}

- (void)dealloc {
    [tableTitles release];
    [super dealloc];
}

#pragma mark - Public

- (void)setVisible:(BOOL)visible {
    self.view.hidden = !visible;
}

#pragma mark - UITableView delegate

// Called after the user changes the selection.
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    // ...
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - UITableView datasource

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    return @"Ethan Gao";
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    return @"zgrubby@gmail.com";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [tableTitles count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"LeftViewTableCell";
	UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	}
    
    cell.textLabel.text = [tableTitles objectAtIndex:indexPath.row];
	return cell;
}

@end
