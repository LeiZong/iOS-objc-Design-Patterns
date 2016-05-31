//
//  ChatRoomMediator.h
//  Mediator
//
//  Created by Leasing on 16/4/23.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "AbstractMediator.h"
#import "User.h"

/**
 *  具体的Mediator类, 实现聊天室中介者。当user发消息后，把这条消息转发给其它user
 */
@interface ChatRoomMediator : AbstractMediator

/**
 *  引入了3个Colleague(可以任意改，不限数量的话，可以用 NSArray<Colleague *>)
 */
@property (nonatomic, strong) User *userA;
@property (nonatomic, strong) User *userB;
@property (nonatomic, strong) User *userC;

@end
