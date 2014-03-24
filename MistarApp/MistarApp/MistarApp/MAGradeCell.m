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

/*
 - (void)setSelected:(BOOL)selected animated:(BOOL)animated
 {
 [super setSelected:selected animated:animated];
 
 // Configure the view for the selected state
 }*/

@end
