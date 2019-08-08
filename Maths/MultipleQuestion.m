//
//  MultipleQuestion.m
//  Maths
//
//  Created by Yamashtia Keisuke on 2019-08-08.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import "MultipleQuestion.h"

@implementation MultipleQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion {
    super.answer = super.rightValue * super.leftValue;
    super.question = [NSString stringWithFormat: @"%ld * %ld?", (long)super.rightValue, (long)super.leftValue];
    
}


@end
