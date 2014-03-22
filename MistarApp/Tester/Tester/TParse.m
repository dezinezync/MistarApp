//
//  TParse.m
//  Tester
//
//  Created by Andrew Breckenridge on 3/22/14.
//  Copyright (c) 2014 Andrew Breckenridge. All rights reserved.
//

#import "TParse.h"
#import "TFHpple.h"

@implementation TParse

- (void)parseForUserID {
    TClient *client = [[TClient alloc] init];
    [client loginToMistarWithPin:@"20014204" password:@"yuiop" success:^{
        [client requestMainPage];
    } failure:^{
        NSLog(@"login failed from controller");
    }];
}


@end
