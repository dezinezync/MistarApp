//
//  MAGradeCell.m
//  MistarApp
//
//  Created by Andrew Breckenridge on 3/24/14.
//  Copyright (c) 2014 Andrew Breckenridge. All rights reserved.
//

#import "MAGradeCell.h"

@implementation MAGradeCell
@synthesize loginButton;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code

        CGFloat inset = 20;
        
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.2];
        self.textLabel.textColor = [UIColor whiteColor];
        self.detailTextLabel.textColor = [UIColor whiteColor];
        loginButton = nil;
        
        if (indexPath.section == 0 && indexPath.row == 0) {
            // Create button
            UIView *cellView = self.contentView;
            CGRect loginButtonFrame = CGRectMake((cellView.frame.size.width - (80 + inset)), 18, 80, (cellView.frame.size.height));
            loginButton = [[QBFlatButton alloc] initWithFrame:loginButtonFrame];
            [loginButton addTarget:self action:@selector(loginButtonWasPressed)forControlEvents:UIControlEventTouchUpInside];
            loginButton.faceColor = [UIColor grayColor];
            loginButton.sideColor = [UIColor clearColor];
   
            loginButton.radius = 6.0;
            loginButton.margin = 4.0;
            loginButton.depth = 3.0;
            loginButton.alpha = 0.3;
            
            loginButton.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue-Light" size:20];
            [loginButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
            [loginButton setTitle:@"Login" forState:UIControlStateNormal];
            [cellView addSubview:loginButton];

        }


        //Init your button and add it to the cell's contentView as a subview. 
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
}

- (void)prepareForReuse
{
    self.loginButton = nil;
    loginButton = nil;
    [loginButton removeFromSuperview];
    [self removeFromSuperview];
    [self.loginButton removeFromSuperview];
    self.textLabel.text = nil;
    
    [super prepareForReuse];
}

- (void)someAction {
    if (self.callBack != nil) {
        
        self.callBack(self);
    }
}

/*
 - (void)setSelected:(BOOL)selected animated:(BOOL)animated
 {
 [super setSelected:selected animated:animated];
 
 // Configure the view for the selected state
 }*/

@end
