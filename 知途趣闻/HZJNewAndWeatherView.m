//
//  HZJNewAndWeatherView.m
//  知途趣闻
//
//  Created by Jay on 2017/11/2.
//  Copyright © 2017年 hanzhijie. All rights reserved.
//

#import "HZJNewAndWeatherView.h"
#import "HZJWeatherView.h"

@interface HZJNewAndWeatherView()

@property (nonatomic, strong) HZJWeatherView *weatherView;

@end

@implementation HZJNewAndWeatherView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style{
    self = [super initWithFrame:frame style:style];
    if (self) {
        [self layout];
    }
    return self;
}

- (void)layout{
    self.weatherView = [[HZJWeatherView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 150)];
    self.weatherView.backgroundColor = [UIColor greenColor];
    self.tableHeaderView = self.weatherView;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
