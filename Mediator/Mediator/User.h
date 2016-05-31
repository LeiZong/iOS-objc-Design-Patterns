//
//  User.h
//  Mediator
//
//  Created by Leasing on 16/4/23.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AbstractColleague.h"

/**
 *  继承自抽象Colleague类。
 */
@interface User : AbstractColleague

/**
 *  Colleague类只包含一个‘name’值
 */
@property (nonatomic, copy) NSString * name;

- (instancetype)initWithName:(NSString *)name;

/**
 *  发送一条消息，通过Mediator让其他的Colleague都收到这条消息
 *
 *  @param message 发送的消息
 */
- (void)sendMessage:(NSString *)message;

/**
 *  通过Mediator接收到其他Colleague的消息，打印到控制台。
 *
 *  @param name    发送者的name
 *  @param message 接收到的消息内容
 */
- (void)receiveColleague:(NSString *)name message:(NSString *)message;

@end
