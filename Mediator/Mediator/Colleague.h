//
//  Colleague.h
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
@interface Colleague : AbstractColleague

/**
 *  Colleague类只包含一个‘value’值
 */
@property (nonatomic) CGFloat value;

/**
 *  改变‘value’值，并且通过引入的Mediator,、改变其他Colleague类的‘value’值
 *
 *  @param value 新的‘value’值
 */
- (void)changeValue:(CGFloat)value;

@end
