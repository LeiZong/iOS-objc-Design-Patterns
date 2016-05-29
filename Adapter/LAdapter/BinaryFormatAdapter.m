//
//  BinaryFormatAdapter.m
//  LAdapter
//
//  Created by Leasing on 16/5/19.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "BinaryFormatAdapter.h"

@implementation BinaryFormatAdapter

- (void)printDecimalNumber {
    NSString *binaryNumber = [BinaryFormatAdapter toDecimalSystemWithBinarySystem:self.binaryNum];
    // 从二进制转换成十进制
    NSLog(@"二进制 %@ 转换成十进制是 %@", self.binaryNum, binaryNumber);
}

+ (NSString *)toDecimalSystemWithBinarySystem:(NSString *)binary {
    int ll = 0 ;
    int  temp = 0 ;
    for (int i = 0; i < binary.length; i ++)
    {
        temp = [[binary substringWithRange:NSMakeRange(i, 1)] intValue];
        temp = temp * powf(2, binary.length - i - 1);
        ll += temp;
    }

    NSString * result = [NSString stringWithFormat:@"%d",ll];

    return result;
}

@end
