//
//  AbstractColleague.h
//  Mediator
//
//  Created by Leasing on 16/4/23.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import <Foundation/Foundation.h>
@class AbstractColleague;

/**
 *  代理方法，在Mediator中实现，实现多个Colleague间的交互
 */
@protocol ColleagueDelegate <NSObject>

@required

- (void)colleague:(AbstractColleague *)event sendMesage:(NSString *)message;

@end

/**
 *  抽象的Colleague类
 */
@interface AbstractColleague : NSObject

/**
 *  在Colleague类中引入了Mediator类
 *  当Colleague类的状态改变时，可以通过引入的Mediator类改变其他Colleague类的状态，而不需要直接在Colleague类与Colleague类之间通信
 */
@property (nonatomic, weak) id <ColleagueDelegate> delegate;

@end
