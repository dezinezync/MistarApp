//
//  TParse.h
//  Tester
//
//  Created by Andrew Breckenridge on 3/22/14.
//  Copyright (c) 2014 Andrew Breckenridge. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TClient.h"
#import "TViewController.h"


@interface TParse : NSObject

- (NSString *)onlyNumbersRegex:(NSString *)string;
- (NSString *)userIDRegex:(NSString *)string;
- (void)parseForUserID:(NSString *)noString success:(void (^)(void))successHandler failure:(void (^)(void))failureHandler;

@end
