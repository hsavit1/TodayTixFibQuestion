//
//  ViewController.m
//  TodayTixFibonacciQuestion
//
//  Created by Henry Savit on 1/27/15.
//  Copyright (c) 2015 Henry Savit. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 }

- (IBAction)calculateButtonPressed:(id)sender {
    
    int numFibs = [self.numField.text intValue];
    
    if(numFibs){
        if(numFibs <= 92){
            UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
            TableViewController *tv = [sb instantiateViewControllerWithIdentifier:@"table"];
            
            NSMutableArray *fibsArray = [[NSMutableArray alloc] initWithObjects: nil];
            for(unsigned long long i = 1; i <= numFibs; i++){
                unsigned long long num = [self calvulateFibonacci:i];
                [fibsArray addObject:[NSNumber numberWithInteger:num ]];
            }

            tv.numRows = numFibs;
            tv.fibArray = fibsArray;
            [self.navigationController pushViewController:tv animated:YES];
        }
        else{
            
        }
    }
    else{
         UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Invalid number"
                                                                                 message:@"Please input a valid number from 1 - 92"
                                                                          preferredStyle:UIAlertControllerStyleAlert];
         UIAlertAction* ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:ok];
         [self presentViewController:alertController animated:YES completion:nil];
    }
    
}

-(unsigned long long)calvulateFibonacci:(unsigned long long)n{

    
    if(n <= 2){
        return 1;
    }
    unsigned long long k = n / 2;
    unsigned long long a = [self calvulateFibonacci:(k + 1)];
    unsigned long long b = [self calvulateFibonacci:k];
    if(n % 2 == 1){
        return a*a + b*b;
    }
    else{
        return b*(2*a - b);
    }
}

@end
