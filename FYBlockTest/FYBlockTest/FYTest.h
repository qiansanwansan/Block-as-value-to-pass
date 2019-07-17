//
//  FYTest.h
//  FYBlockTest
//
//  Created by 冯宇的Mac mini on 2019/7/16.
//  Copyright © 2019 冯宇的Mac mini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FYModel.h"
NS_ASSUME_NONNULL_BEGIN

typedef void(^FYBlock)(FYModel *model);

@interface FYTest : NSObject

+(void)fyTestBlock:(FYBlock)block;

@end

NS_ASSUME_NONNULL_END
