//
//  OctalFormatAdapter.h
//  LAdapter
//
//  Created by Leasing on 16/5/19.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "OctalFormatModel.h"
#import "DecimalAdapterProtocol.h"

/**
 *  对象适配器
 *  Adapter实现Target协议，并且包含一个Adaptee委托
 */
@interface OctalFormatAdapter : NSObject<DecimalAdapterProtocol>

- (instancetype)initWithOctalNumber:(NSString *)number;

@end
