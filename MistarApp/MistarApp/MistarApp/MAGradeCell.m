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
        
        MAController *viewController = [[MAController alloc] init];
        
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.2];
        self.textLabel.textColor = [UIColor whiteColor];
        self.detailTextLabel.textColor = [UIColor whiteColor];
        loginButton = nil;
        
        if (indexPath.section == 0) {
            // 1
            if (indexPath.row == 0) {
                [viewController configureHeaderCell:self title:@"Hourly Forecast"];
            }
            else {
                // 2
                MACondition *weather = [MAManager sharedManager].hourlyForecast[indexPath.row - 1];
                [viewController configureHourlyCell:self weather:weather];
            }
        }
        else if (indexPath.section == 1) {
            // 1
            if (indexPath.row == 0) {
                [viewController configureHeaderCell:self title:@"Daily Forecast"];
            }
            else {
                // 3
                MACondition *weather = [MAManager sharedManager].dailyForecast[indexPath.row - 1];
                [viewController configureDailyCell:self weather:weather];
            }
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
    loginButton = nil;
    [super prepareForReuse];
}

/*
 - (void)setSelected:(BOOL)selected animated:(BOOL)animated
 {
 [super setSelected:selected animated:animated];
 
 // Configure the view for the selected state
 }*/

@end
