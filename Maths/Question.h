//
//  AdditionQuestion.h
//  Maths
//
//  Created by Yamashtia Keisuke on 2019-07-31.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject

@property (nonatomic, assign)NSString *question;
@property (nonatomic, assign)NSInteger answer;
@property (nonatomic) NSInteger rightValue;
@property (nonatomic) NSInteger leftValue;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;


- (instancetype)init;
-(NSTimeInterval)answerTime;
-(NSInteger)answer;
-(void)generateQuestion;

@end

NS_ASSUME_NONNULL_END
