//
//  MAController.h
//  MistarApp
//
//  Created by Andrew Breckenridge on 3/23/14.
//  Copyright (c) 2014 Andrew Breckenridge. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QBFlatButton.h>

#import "MAGradeClient.h"

@interface MAController : UIViewController
<UITableViewDataSource, UITabBarDelegate, UIScrollViewDelegate>

- (void)dismissKeyboard;
- (void)loginButtonWasPressed;


@end
