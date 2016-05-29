//
//  BinaryAdapterProtocol.h
//  LAdapter
//
//  Created by Leasing on 16/5/19.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  Target
 */
@protocol DecimalAdapterProtocol <NSObject>

/**
 *  打印十进制数(该方法是用户需要用到的接口, Adapter通过实现协议的方法实现该方法)
 */
- (void)printDecimalNumber;

@end
