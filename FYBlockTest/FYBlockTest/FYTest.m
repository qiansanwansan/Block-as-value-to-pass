//
//  FYTest.m
//  FYBlockTest
//
//  Created by 冯宇的Mac mini on 2019/7/16.
//  Copyright © 2019 冯宇的Mac mini. All rights reserved.
//

#import "FYTest.h"

@implementation FYTest

+(void)fyTestBlock:(FYBlock)block{
    // 传空不做操作
    if (block) {
        FYModel *model = [FYModel new];
        model.name = @"ff";
        block(model);
    }
}
+(void)fyTestReturnStrBlock:(returnStrBlock)block{
    if (block) {
        FYModel *model = [FYModel new];
        model.name = @"tt";
        NSLog(@"这里可以给FYTest的变量赋值：%@",block(model));
    }
}
@end
