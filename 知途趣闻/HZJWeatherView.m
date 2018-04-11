//
//  HZJWeatherView.m
//  知途趣闻
//
//  Created by Jay on 2017/11/1.
//  Copyright © 2017年 hanzhijie. All rights reserved.
//

#import "HZJWeatherView.h"
#import "Masonry.h"
#define SCREENWITH  [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT [UIScreen mainScreen].bounds.size.height
@interface HZJWeatherView()

@property (nonatomic, strong) UIButton *cityBtn;
@property (nonatomic, strong) UILabel *temperatureLabel;
@property (nonatomic, strong) UILabel *windLabel;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *weatherLabel;
@property (nonatomic, strong) UIView *line;
@property (nonatomic, strong) UILabel *tomorrowLabel;
@property (nonatomic, strong) UIImageView *weatherImageView;
@property (nonatomic, strong) UILabel *tmrTempLabel;
@property (nonatomic, strong) UILabel *tmrWeatherLabel;

@end

@implementation HZJWeatherView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    self.line = [[UIView alloc] initWithFrame:CGRectMake(SCREENWITH * 0.65, 10, 0.7, self.frame.size.height - 20)];
    self.line.backgroundColor = [UIColor whiteColor];
    [self addSubview:self.line];
    
    self.cityBtn = [[UIButton alloc] initWithFrame:CGRectMake(5, 5, 60, 15)];
    self.cityBtn.backgroundColor = [UIColor redColor];
    [self addSubview:self.cityBtn];
    
    self.temperatureLabel = [[UILabel alloc] init];
    self.temperatureLabel.backgroundColor = [UIColor blueColor];
    [self addSubview:self.temperatureLabel];
    [self.temperatureLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(@50);
        make.centerX.equalTo(self.line.mas_left).multipliedBy(0.5);
        make.width.mas_equalTo(SCREENWITH / 3.0);
        make.height.equalTo(@50);
    }];
    
    self.titleLabel = [[UILabel alloc] init];
    self.titleLabel.backgroundColor = [UIColor yellowColor];
    [self addSubview:self.titleLabel];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.temperatureLabel);
        make.top.equalTo(@30);
        make.width.mas_equalTo(SCREENWITH * 0.7 * 2 / 5.0);
        make.height.equalTo(@15);
    }];
    
    self.weatherLabel = [[UILabel alloc] init];
    self.weatherLabel.backgroundColor = [UIColor yellowColor];
    [self addSubview:self.weatherLabel];
    [self.weatherLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.temperatureLabel.mas_bottom).with.offset(5);
        make.width.equalTo(self.temperatureLabel.mas_width);
        make.left.equalTo(self.temperatureLabel.mas_left);
        make.height.equalTo(@15);
    }];
    
    self.tomorrowLabel = [[UILabel alloc] init];
    self.tomorrowLabel.backgroundColor = [UIColor redColor];
    [self addSubview:self.tomorrowLabel];
    [self.tomorrowLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.titleLabel.mas_top);
        make.height.equalTo(self.titleLabel.mas_height);
        make.width.equalTo(@30);
        make.left.mas_equalTo(SCREENWITH * 0.65 + SCREENWITH * 0.35 / 5.0);
    }];
    
    self.weatherImageView = [[UIImageView alloc] init];
    self.weatherImageView.backgroundColor = [UIColor yellowColor];
    [self addSubview:self.weatherImageView];
    [self.weatherImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.tomorrowLabel.mas_left);
        make.bottom.equalTo(self.temperatureLabel.mas_bottom);
        make.top.equalTo(self.temperatureLabel.mas_top);
        make.width.equalTo(@40);
    }];
    
    self.tmrTempLabel = [[UILabel alloc] init];
    self.tmrTempLabel.backgroundColor = [UIColor blueColor];
    [self addSubview:self.tmrTempLabel];
    [self.tmrTempLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.weatherImageView);
        make.left.equalTo(self.weatherImageView.mas_right).with.offset(5);
        make.width.equalTo(self.weatherImageView.mas_width);
        make.bottom.equalTo(self.weatherImageView);
    }];
    
    self.tmrWeatherLabel = [[UILabel alloc] init];
    [self addSubview:self.tmrWeatherLabel];
    self.tmrWeatherLabel.backgroundColor = [UIColor redColor];
    [self.tmrWeatherLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.weatherLabel.mas_top);
        make.left.equalTo(self.weatherImageView.mas_left);
        make.right.equalTo(self.tmrTempLabel.mas_right);
        make.height.equalTo(self.weatherLabel.mas_height);
    }];
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
