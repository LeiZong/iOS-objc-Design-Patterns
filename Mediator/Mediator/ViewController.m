//
//  ViewController.m
//  Mediator
//
//  Created by Leasing on 16/4/23.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "ViewController.h"
#import "ChatRoomMediator.h"
#import "User.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    /**
     *  通过中介者模式简单实现 聊天室 的功能，当user发出一条消息时，同一个聊天室内的user都会收到这条消息
     */
    ChatRoomMediator *mediator = [[ChatRoomMediator alloc] init];
    User *userA = [[User alloc] initWithName:@"Tom"];
    User *userB = [[User alloc] initWithName:@"Jerry"];
    User *userC = [[User alloc] initWithName:@"Kitty"];

    mediator.userA = userA;
    mediator.userB = userB;
    mediator.userC = userC;

    userA.delegate = mediator;
    userB.delegate = mediator;
    userC.delegate = mediator;

    [userA sendMessage:@"I'm Tom!"];
    [userB sendMessage:@"I'm Jerry!"];
    [userC sendMessage:@"I'm Kitty!"];
}

@end
