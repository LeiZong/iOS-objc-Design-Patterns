//
//  Colleague.m
//  Mediator
//
//  Created by Leasing on 16/4/23.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "Colleague.h"

@implementation Colleague

- (void)changeValue:(CGFloat)value {
    self.value = value;
    if (self.delegate && [self.delegate respondsToSelector:@selector(colleagueEvent:)]) {
      [self.delegate colleagueEvent:self];
    }
}

@end
