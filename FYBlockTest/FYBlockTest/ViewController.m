//
//  ViewController.m
//  FYBlockTest
//
//  Created by 冯宇的Mac mini on 2019/7/16.
//  Copyright © 2019 冯宇的Mac mini. All rights reserved.
//

#import "ViewController.h"
#import "FYTest.h"

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [FYTest fyTestBlock:nil];
    
    [FYTest fyTestBlock:^(FYModel * _Nonnull model) {
        NSString *name = model.name;
        NSLog(@"%@",name);
    }];
    
    [FYTest fyTestReturnStrBlock:^NSString *(FYModel * _Nonnull model) {
        NSString *name = model.name;
        NSLog(@"%@", name);
        return [name stringByAppendingString:@"从ViewController里追加"] ;
    }];
    
}


@end
