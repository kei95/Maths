//
//  AdditionQuestion.m
//  Maths
//
//  Created by Yamashtia Keisuke on 2019-07-31.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype)init
{
    if ((self = [super init])) {
        _rightValue = arc4random_uniform(100);
        _leftValue = arc4random_uniform(100);
//        _question = [NSString stringWithFormat: @"%ld + %ld?", (long)_randomNumRight, (long)_randomNumLeft];
//        _answer = (_randomNumRight + _randomNumLeft);
        _startTime = [NSDate date];
    }
    return self;
}

-(void)generateQuestion {
    
}

-(NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime {
    return [_endTime timeIntervalSinceDate:_startTime];
}

@end
