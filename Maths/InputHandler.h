//
//  InputHandler.h
//  Maths
//
//  Created by Yamashtia Keisuke on 2019-08-01.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputHandler : NSObject
- (NSString *) getUserInput:(NSString *)prompt;
- (instancetype)init;
@end

NS_ASSUME_NONNULL_END
