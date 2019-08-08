//
//  QuestionManager.h
//  Maths
//
//  Created by Yamashtia Keisuke on 2019-08-07.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSString
-(void)addQuestion: (Question*)object;
-(NSString*)timeAvarage;
@end

NS_ASSUME_NONNULL_END
