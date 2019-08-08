//
//  main.m
//  Maths
//  Created by Yamashtia Keisuke on 2019-07-31.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        while (gameOn) {
            Question *question = [questionFactory generate];
            [questionManager addQuestion: question];
            NSString *answer = [NSString stringWithFormat:@"%ld", (long)[question answer]];
            NSLog(@"%@", [question question]);
            InputHandler *input = [[InputHandler alloc]init];
            NSString *inputAnswer = [input getUserInput:(@"")];
            
            if ([inputAnswer isEqualToString:answer]){
                NSLog(@"Right!");
                [scoreKeeper setRight:[scoreKeeper right]+1];
                NSLog(@"%@", [scoreKeeper score]);
                NSLog(@"%@", [questionManager timeAvarage]);
            } else if ([inputAnswer isEqualToString:@"quit"]){
                break;
            } else if ([inputAnswer isEqualToString:@"score"]){
                NSLog(@"%@", [scoreKeeper score]);
                NSLog(@"%@", [questionManager timeAvarage]);
            } else {
                NSLog(@"Wrong!");
                [scoreKeeper setWrong:[scoreKeeper wrong]+1];
                NSLog(@"%@", [scoreKeeper score]);
                NSLog(@"%@", [questionManager timeAvarage]);
            }

        }
    }
    return 0;
}
