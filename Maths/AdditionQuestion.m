//
//  AdditionQuestion.m
//  Maths
//
//  Created by Yamashtia Keisuke on 2019-07-31.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion {
    NSInteger _randomNumRight;
    NSInteger _randomNumLeft;
}

- (instancetype)init
{
    if ((self = [super init])) {
        _randomNumRight = arc4random_uniform(100);
        _randomNumLeft = arc4random_uniform(100);
        _question = [NSString stringWithFormat: @"%ld + %ld?", (long)_randomNumRight, (long)_randomNumLeft];
        _answer = (_randomNumRight + _randomNumLeft);
    }
    return self;
}

@end
