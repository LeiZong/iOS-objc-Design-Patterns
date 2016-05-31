//
//  ViewController.m
//  Mediator
//
//  Created by Leasing on 16/4/23.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "ViewController.h"
#import "TypeOneMediator.h"
#import "Colleague.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TypeOneMediator *mediator = [TypeOneMediator new];
    Colleague *colleagueA = [[Colleague alloc] init];
    Colleague *colleagueB = [[Colleague alloc] init];
    Colleague *colleagueC = [[Colleague alloc] init];
    mediator.colleagueA = colleagueA;
    mediator.colleagueB = colleagueB;
    mediator.colleagueC = colleagueC;

    colleagueA.delegate = mediator;
    colleagueB.delegate = mediator;
    colleagueC.delegate = mediator;

    [colleagueA changeValue:2];
    NSLog(@"%@",mediator.values);

    [colleagueA changeValue:1];
    NSLog(@"%@",mediator.values);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
