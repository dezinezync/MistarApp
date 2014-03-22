//
//  TViewController.m
//  Tester
//
//  Created by Andrew Breckenridge on 3/19/14.
//  Copyright (c) 2014 Andrew Breckenridge. All rights reserved.
//

#import "TViewController.h"

@interface TViewController ()

@end

@implementation TViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    TParse *parser = [[TParse alloc] init];
    
    [parser parseForUserID];
    
    
    
    //Here, you can implement a login screen, and do a if(userLoggedIn)

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
