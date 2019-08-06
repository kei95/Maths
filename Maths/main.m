//
//  main.m
//  Maths
//  Created by Yamashtia Keisuke on 2019-07-31.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        
        while (gameOn) {
            AdditionQuestion *addtionQuestion = [[AdditionQuestion alloc]init];
            NSString *answer = [NSString stringWithFormat:@"%ld", (long)[addtionQuestion answer]];
            NSLog(@"%@", [addtionQuestion question]);
            InputHandler *input = [[InputHandler alloc]init];
            NSString *inputAnswer = [input getUserInput:(@"")];
            if ([inputAnswer isEqualToString:answer]){
                NSLog(@"Right!");
                [scoreKeeper setRight:[scoreKeeper right]+1];
            } else if ([inputAnswer isEqualToString:@"quit"]){
                break;
            } else if ([inputAnswer isEqualToString:@"score"]){
                NSLog(@"%@", [scoreKeeper score]);
            } else {
                NSLog(@"Wrong!");
                [scoreKeeper setWrong:[scoreKeeper wrong]+1];
            }

        }
    }
    return 0;
}
