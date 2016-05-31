//
//  ChatRoomMediator.m
//  Mediator
//
//  Created by Leasing on 16/4/23.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "ChatRoomMediator.h"

@implementation ChatRoomMediator

/**
 *  当一个colleague的值改变时，改变其他colleague的值。规则是 colleagueA : colleagueB : colleagueC = 1 : 2 : 4
 *
 *  @param event colleague类
 */
- (void)colleague:(AbstractColleague *)event sendMesage:(NSString *)message {
    
    if ([event isEqual:self.userA]) {
        [self.userB receiveColleague:self.userA.name message:message];
        [self.userC receiveColleague:self.userA.name message:message];
    } else if ([event isEqual:self.userB]) {
        [self.userA receiveColleague:self.userB.name message:message];
        [self.userC receiveColleague:self.userB.name message:message];
    } else if ([event isEqual:self.userC]) {
        [self.userA receiveColleague:self.userC.name message:message];
        [self.userB receiveColleague:self.userC.name message:message];
    }
}

@end
