//
//  ScoreKeeper.h
//  Maths
//
//  Created by Yamashtia Keisuke on 2019-08-01.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject
@property (nonatomic, assign)NSInteger right;
@property (nonatomic, assign)NSInteger wrong;
@property (nonatomic, assign)NSInteger percentage;
- (NSString* )score;

@end

NS_ASSUME_NONNULL_END
