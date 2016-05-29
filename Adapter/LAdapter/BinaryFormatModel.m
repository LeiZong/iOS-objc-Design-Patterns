//
//  BinaryFormatModel.m
//  LAdapter
//
//  Created by Leasing on 16/5/19.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "BinaryFormatModel.h"

@implementation BinaryFormatModel

- (instancetype)initWithBinaryNumber:(NSString *)number {
    self = [super init];
    if (self) {
        self.binaryNum = number;
    }
    return self;
}

@end
