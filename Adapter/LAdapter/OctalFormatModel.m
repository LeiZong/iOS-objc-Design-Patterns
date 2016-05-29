//
//  HexadecimalFormatModel.m
//  LAdapter
//
//  Created by Leasing on 16/5/19.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "OctalFormatModel.h"

@implementation OctalFormatModel

- (instancetype)initWithOctalNumber:(NSString *)number {
    self = [super init];
    if (self) {
        self.octalNum = number;
    }
    return self;
}

@end
