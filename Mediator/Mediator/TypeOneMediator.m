//
//  TypeOneMediator.m
//  Mediator
//
//  Created by Leasing on 16/4/23.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "TypeOneMediator.h"

@implementation TypeOneMediator

/**
 *  当一个colleague的值改变时，改变其他colleague的值。规则是 colleagueA : colleagueB : colleagueC = 1 : 2 : 4
 *
 *  @param event colleague类
 */
- (void)colleagueEvent:(AbstractMediator *)event {
    
    if ([event isEqual:self.colleagueA]) {
        self.colleagueB.value = self.colleagueA.value * 2;
        self.colleagueC.value = self.colleagueA.value * 4;
    } else if ([event isEqual:self.colleagueB]) {
        self.colleagueB.value = self.colleagueA.value / 2;
        self.colleagueC.value = self.colleagueA.value * 2;
    } else if ([event isEqual:self.colleagueC]) {
        self.colleagueB.value = self.colleagueA.value / 4;
        self.colleagueC.value = self.colleagueA.value / 2;
    }
}

- (NSDictionary *)values {
    return @{@"A" : @(self.colleagueA.value),
             @"B" : @(self.colleagueB.value),
             @"C" : @(self.colleagueC.value)};
}

@end
