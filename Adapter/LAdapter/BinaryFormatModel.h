//
//  BinaryFormatModel.h
//  LAdapter
//
//  Created by Leasing on 16/5/19.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  Adaptee （包含一个二进制数的Model）
 */
@interface BinaryFormatModel : NSObject

@property (nonatomic, strong) NSString *binaryNum;

- (instancetype)initWithBinaryNumber:(NSString *)number;

@end
