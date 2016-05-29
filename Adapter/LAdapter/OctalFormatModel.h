//
//  OctalFormatModel.h
//  LAdapter
//
//  Created by Leasing on 16/5/19.
//  Copyright © 2016年 Leasing. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  Adaptee （包含一个8进制数的Model）
 */
@interface OctalFormatModel : NSObject

@property (nonatomic, strong) NSString *octalNum;

- (instancetype)initWithOctalNumber:(NSString *)number;

@end
