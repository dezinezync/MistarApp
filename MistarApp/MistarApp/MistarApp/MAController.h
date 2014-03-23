//
//  MAController.h
//  MistarApp
//
//  Created by Andrew Breckenridge on 3/23/14.
//  Copyright (c) 2014 Andrew Breckenridge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MAController : UIViewController
<UITableViewDataSource, UITabBarDelegate, UIScrollViewDelegate>

@property (nonatomic) UITextField *loginField;
@property (nonatomic) UITextField *passwordField;

- (void)dismissKeyboard;
- (BOOL)userEnteredData;

@end
