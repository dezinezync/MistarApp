//
//  TClient.h
//  Tester
//
//  Created by Andrew Breckenridge on 3/19/14.
//  Copyright (c) 2014 Andrew Breckenridge. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TClient : NSObject

- (void)print;
- (void)getHTML;
- (NSString *)percentEscapeString:(NSString *)string;
- (void)loginToMistarWithPin:(NSString *)pin password:(NSString *)password success:(void (^)(void))successHandler failure:(void (^)(void))failureHandler;
- (void)requestMainPage;

@end
