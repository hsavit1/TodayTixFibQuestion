//
//  TableViewController.m
//  TodayTixFibonacciQuestion
//
//  Created by Henry Savit on 1/27/15.
//  Copyright (c) 2015 Henry Savit. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.fibLabel.text = [NSString stringWithFormat:@"A fibonacci series of %llu numbers was calculated", self.numRows] ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.numRows;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    NSInteger rowNum =  indexPath.row;
    
    cell.textLabel.text = [@"#" stringByAppendingString:[@(rowNum+1) stringValue]];
    cell.detailTextLabel.numberOfLines = 0;
    cell.detailTextLabel.text = [self.fibArray[rowNum] stringValue];
    return cell;
}

@end
