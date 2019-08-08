//
//  QuestionFactory.m
//  Maths
//
//  Created by Yamashtia Keisuke on 2019-08-08.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import "QuestionFactory.h"
#import "Question.h"

@implementation QuestionFactory{
    NSArray<NSString *> *questionSubclassNames;
};

- (instancetype)init
{
    self = [super init];
    if (self) {
        questionSubclassNames = @[@"AdditionQuestion", @"DivitionQuestion", @"MultipleQuestion", @"SubstractionQuestion"];
    }
    return self;
}

- (Question *) generate
{
    return [[NSClassFromString(questionSubclassNames[arc4random_uniform(3)])alloc]init];
}

@end
