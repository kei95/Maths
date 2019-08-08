//
//  QuestionManager.m
//  Maths
//
//  Created by Yamashtia Keisuke on 2019-08-07.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager {
    NSMutableArray *_questions;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addQuestion: (Question*)object{
    [_questions addObject: object];
}

-(NSString*)timeAvarage {
    NSInteger totalTime = 0;
    for(int i = 0; i < [_questions count]; i++){
        totalTime = totalTime + [_questions[i] answerTime];
    }
    return [NSString stringWithFormat:(@"total time: %ld s, average time: %lu s"), (long)totalTime, totalTime / [_questions count] ];
}

@end
