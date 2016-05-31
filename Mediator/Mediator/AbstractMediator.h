//
//  AbstractMediator.h
//  Mediator
//
//  Created by Leasing on 16/4/23.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractColleague.h"

/**
 *  抽象的Mediator类，需要实现ColleagueDelegate协议方法
 */
@interface AbstractMediator : NSObject <ColleagueDelegate>

/**
 *  Mediator类，通过这个协议方法改变Colleague的‘value’值
 *
 *  @param event Colleague类
 */
- (void)colleagueEvent:(AbstractColleague *)event;

@end
