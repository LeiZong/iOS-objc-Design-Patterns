//
//  User.m
//  Mediator
//
//  Created by Leasing on 16/4/23.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "User.h"

@implementation User

- (instancetype)initWithName:(NSString *)name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)sendMessage:(NSString *)message {
    if (self.delegate && [self.delegate respondsToSelector:@selector(colleague:sendMesage:)]) {
        [self.delegate colleague:self sendMesage:message];
    }
}

- (void)receiveColleague:(NSString *)name message:(NSString *)message {
    NSLog(@"%@ receive %@'s message : %@",self.name, name, message);
}

@end
