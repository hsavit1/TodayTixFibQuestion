//
//  TableViewController.h
//  TodayTixFibonacciQuestion
//
//  Created by Henry Savit on 1/27/15.
//  Copyright (c) 2015 Henry Savit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewController : UITableViewController

@property (weak, nonatomic) IBOutlet UILabel *fibLabel;


@property (nonatomic, strong) NSMutableArray *fibArray;
@property unsigned long long numRows;

@end
