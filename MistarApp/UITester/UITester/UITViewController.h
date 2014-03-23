//
//  UITViewController.h
//  UITester
//
//  Created by Andrew Breckenridge on 3/22/14.
//  Copyright (c) 2014 Andrew Breckenridge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITViewController : UIViewController
<UITableViewDataSource, UITableViewDelegate, UIScrollViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, assign) CGFloat screenHeight;



@end
