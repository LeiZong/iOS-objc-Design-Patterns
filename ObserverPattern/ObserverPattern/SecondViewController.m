//
//  SecondViewController.m
//  ObserverPattern
//
//  Created by Leasing on 16/6/1.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)sendNotification:(UIButton *)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:kNotification
                                                        object:nil
                                                      userInfo:@{@"key": @"value"}];
}

- (void)dealloc {
    NSLog(@"SecondViewController Dealloc");
}

@end
