//
//  UITManager.m
//  UITester
//
//  Created by Andrew Breckenridge on 3/23/14.
//  Copyright (c) 2014 Andrew Breckenridge. All rights reserved.
//

#import "UITManager.h"

@interface UITManager ()

@property (nonatomic, strong, readwrite) NSString *userID;
@property (nonatomic, strong, readwrite) NSArray *grades;
@property (nonatomic, strong, readwrite) NSArray *progressReport;

@property (nonatomic, assign) BOOL isFirstUpdate;
//@property (nonatomic, strong) WXClient *client;

@end




@implementation UITManager

+ (instancetype)sharedManager {
    static id _sharedManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedManager = [[self alloc] init];
    });
    
    return _sharedManager;
}

- (id)init {
    if (self = [super init]) {

//Creat client        _client = [[WXClient alloc] init];
    }
    return self;
}



@end
