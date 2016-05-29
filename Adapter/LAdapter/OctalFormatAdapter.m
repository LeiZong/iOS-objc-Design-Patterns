//
//  OctalFormatAdapter.m
//  LAdapter
//
//  Created by Leasing on 16/5/19.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "OctalFormatAdapter.h"

@interface OctalFormatAdapter()

@property (nonatomic, strong) OctalFormatModel *octalModel;

@end

@implementation OctalFormatAdapter

- (instancetype)initWithOctalNumber:(NSString *)number {
    self = [super init];
    if (self) {
        self.octalModel = [[OctalFormatModel alloc] initWithOctalNumber:number];
    }
    return self;
}

- (void)printDecimalNumber {
    NSString *binaryNumber = [OctalFormatAdapter toDecimalSystemWithOctalSystem:self.octalModel.octalNum];
    // 从二进制转换成十进制
    NSLog(@"八进制 %@ 转换成十进制是 %@", self.octalModel.octalNum, binaryNumber);
}

+ (NSString *)toDecimalSystemWithOctalSystem:(NSString *)octal {
    int ll = 0 ;
    int  temp = 0 ;
    for (int i = 0; i < octal.length; i ++)
    {
        temp = [[octal substringWithRange:NSMakeRange(i, 1)] intValue];
        temp = temp * powf(8, octal.length - i - 1);
        ll += temp;
    }

    NSString * result = [NSString stringWithFormat:@"%d",ll];

    return result;
}

@end
