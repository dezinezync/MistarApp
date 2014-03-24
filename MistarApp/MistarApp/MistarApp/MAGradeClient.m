//
//  MAGradeClient.m
//  MistarApp
//
//  Created by Andrew Breckenridge on 3/23/14.
//  Copyright (c) 2014 Andrew Breckenridge. All rights reserved.
//

//Use TClient

#import "MAGradeClient.h"

@implementation MAGradeClient

- (BOOL)provideLoginWithPin:(NSString *)pin password:(NSString *)password {
    NSLog([NSString stringWithFormat:@"Got these details %@ & %@", pin, password]);
    return true;
}



@end
