//
//  FISHellaMasterTableViewController.m
//  HellaCells
//
//  Created by Colin Walsh on 6/22/16.
//  Copyright © 2016 FIS. All rights reserved.
//

#import "FISHellaMasterTableViewController.h"


@interface FISHellaMasterTableViewController ()

@end

@implementation FISHellaMasterTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.accessibilityLabel = @"Table";
    self.tableView.accessibilityIdentifier = @"Table";
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *tableCell = [tableView dequeueReusableCellWithIdentifier:@"numberCell"];
    tableCell.textLabel.text = [NSString stringWithFormat:@"%li", indexPath.row + 1];
    return tableCell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    FISHellaDetailViewController* detailVC = (FISHellaDetailViewController *)segue.destinationViewController;
    
    NSIndexPath *selectedPath = [self.tableView indexPathForSelectedRow];
    
    detailVC.numberOfCell = selectedPath.row + 1;
    
}



@end
