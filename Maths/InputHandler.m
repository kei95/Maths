//
//  InputHandler.m
//  Maths
//
//  Created by Yamashtia Keisuke on 2019-08-01.
//  Copyright © 2019 Yamashtia Keisuke. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler{
    NSInteger _maxLength;
}

- (instancetype)init
{
    
    if ((self = [super init])) {
        _maxLength = 200;
    }
    return self;
}

- (NSString *) getUserInput:(NSString *)prompt; {
    int maxLength = 255;
//    if(maxLength < 1){
//        maxLength = 255;
//    }
    NSLog(@"%@ ",prompt);
    char inputChars[maxLength];
    char *result = fgets(inputChars, maxLength, stdin);
    if (result != NULL){
        NSString *inputStr = [NSString stringWithUTF8String:inputChars];
        // NSString.sringWithUTF8String(inputChars);
        return [inputStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    }
    return NULL;
}

@end
