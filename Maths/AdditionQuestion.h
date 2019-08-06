//
//  AdditionQuestion.h
//  Maths
//
//  Created by Yamashtia Keisuke on 2019-07-31.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject
@property (nonatomic, assign)NSString *question;
@property (nonatomic, assign)NSInteger answer;
- (instancetype)init;


@end

NS_ASSUME_NONNULL_END
