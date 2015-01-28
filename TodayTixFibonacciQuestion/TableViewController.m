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
    if((int)self.numRows < 46){
        self.fibLabel.text = @"FIbonacci numbers supported on 32 and 64 bit iPhones";
    }
    else if ((int)self.numRows >= 46 && (int)self.numRows < 92){
        self.fibLabel.text = @"FIbonacci numbers not supported on 32 bit iPhones but are supported on 64 bit iPhones";
    }
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
    
    cell.textLabel.text = [[@(rowNum+1) stringValue] stringByAppendingString:@": Fib number is->"];
    cell.detailTextLabel.text = [self.fibArray[rowNum] stringValue];
    return cell;
}

@end
