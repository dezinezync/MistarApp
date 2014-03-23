//
//  UITManager.h
//  UITester
//
//  Created by Andrew Breckenridge on 3/23/14.
//  Copyright (c) 2014 Andrew Breckenridge. All rights reserved.
//

@import Foundation;
#import <Foundation/Foundation.h>

@interface UITManager : NSObject

+ (instancetype)sharedManager;

@property (nonatomic, strong, readonly) NSString *userID;
@property (nonatomic, strong, readonly) NSArray *grades;
@property (nonatomic, strong, readonly) NSArray *progressReports;

- (void)downloadEverything;

@end
