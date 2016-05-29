//
//  BinaryFormatAdapter.h
//  LAdapter
//
//  Created by Leasing on 16/5/19.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import "BinaryFormatModel.h"
#import "DecimalAdapterProtocol.h"

/**
 *  类适配器
 *  Adapter继承自Adaptee并且实现Target协议
 */
@interface BinaryFormatAdapter : BinaryFormatModel<DecimalAdapterProtocol>

@end
