//
//  ViewController.m
//  LAdapter
//
//  Created by Leasing on 16/5/19.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "ViewController.h"
#import "BinaryFormatModel.h"
#import "BinaryFormatAdapter.h"
#import "OctalFormatModel.h"
#import "OctalFormatAdapter.h"
#import "DecimalAdapterProtocol.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //用户需要的是10进制的数
    //但是原有的接口提供的是2进制和8进制的数
    //使用适配器模式将原有的接口适配成用户需要的接口

    //类适配器 - 继承实现
    id<DecimalAdapterProtocol> adapter1 = [[BinaryFormatAdapter alloc] initWithBinaryNumber:@"101"];
    [adapter1 printDecimalNumber];

    //对象适配器 - 委托实现
    id<DecimalAdapterProtocol> adapter2 = [[OctalFormatAdapter alloc] initWithOctalNumber:@"11"];
    [adapter2 printDecimalNumber];
}

@end
