//
//  MAGradeClient.h
//  MistarApp
//
//  Created by Andrew Breckenridge on 3/23/14.
//  Copyright (c) 2014 Andrew Breckenridge. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MAGradeClient : NSObject

- (BOOL)provideLoginWithPin:(NSString *)pin password:(NSString *)password;

@end
