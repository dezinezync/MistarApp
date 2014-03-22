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


- (NSString *)userIDRegex:(NSData *)data {
    
    NSString* string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    
    //Create a regular expression
    NSString *regexStr = @"tr id=\"[0-9]*\"";
    NSError *error = nil;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:regexStr options:0 error:&error];
    
    //Enumerate all matches
    if ((regex==nil) && (error!=nil)){
        return [NSString stringWithFormat:@"Regex failed for url: %@, error was: %@", string, error];
    } else {
        [regex enumerateMatchesInString:string
        options:0
        range:NSMakeRange(0, [string length])
        usingBlock:^(NSTextCheckingResult *result, NSMatchingFlags flags, BOOL *stop){
            if (result!=nil){
                // iterate ranges
                for (int i=0; i<[result numberOfRanges]; i++) {
                    NSRange range = [result rangeAtIndex:i];
                    NSLog(@"%ld,%ld group #%d %@", range.location, range.length, i, (range.length==0 ? @"--" : [string substringWithRange:range]));
                    return [string substringWithRange:range];
                }
            }
            return @"Regex failed (it found no matches)";
        }];
    }
}


- (void)parseForUserID {
    //Get the Data you need to parse for (i.e. user main page returned as a block of NSData.
    TClient *client = [[TClient alloc] init];
    [client loginToMistarWithPin:@"20014204" password:@"yuiop" success:^{
        [client requestMainPage];
    } failure:^{
        NSLog(@"login failed from controller");
    }];
    
}





@end
