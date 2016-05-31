//
//  TypeOneMediator.h
//  Mediator
//
//  Created by Leasing on 16/4/23.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "AbstractMediator.h"
#import "Colleague.h"

/**
 *  具体的Mediator类
 */
@interface TypeOneMediator : AbstractMediator

/**
 *  引入了3个Colleague(可以任意改，不限数量的话，可以用 NSArray<Colleague *>)
 */
@property (nonatomic, strong) Colleague *colleagueA;
@property (nonatomic, strong) Colleague *colleagueB;
@property (nonatomic, strong) Colleague *colleagueC;

/**
 *  只是 打印一下值
 *
 *  @return 所有Colleague的‘value’
 */
- (NSDictionary *)values;

@end
