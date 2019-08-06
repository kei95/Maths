//
//  ScoreKeeper.m
//  Maths
//
//  Created by Yamashtia Keisuke on 2019-08-01.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper{
    NSInteger _wrong;
    NSInteger _right;
}

- (instancetype)init
{
    if ((self = [super init])) {
        
    }
    return self;
}

- (NSString* )score{
    double percent = ((double) _right / (_wrong + _right)) * 100;
    return [NSString stringWithFormat: @"score: %ld right, %ld wrong, ---- %lf", _right, _wrong, percent];
};
@end
