//
//  HZJWeatherModel.h
//  知途趣闻
//
//  Created by Jay on 2017/11/2.
//  Copyright © 2017年 hanzhijie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "HZJWeatherResultModel.h"

@protocol HZJWeatherIndexModel
@end
@protocol HZJWeatherDataModel
@end
@protocol HZJWeatherResultsModel
@end

@interface HZJWeatherIndexModel : JSONModel

@property (nonatomic, copy) NSString *des;
@property (nonatomic, copy) NSString *tipt;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *zs;

@end

@interface HZJWeatherDataModel : JSONModel

@property (nonatomic, copy) NSString *date;
@property (nonatomic, copy) NSString *dayPictureUrl;
@property (nonatomic, copy) NSString *nightPictureUrl;
@property (nonatomic, copy) NSString *temperature;
@property (nonatomic, copy) NSString *weather;
@property (nonatomic, copy) NSString *wind;

@end

@interface HZJWeatherResultsModel : JSONModel

@property (nonatomic, copy) NSString *currentCity;
@property (nonatomic, strong) NSMutableArray<HZJWeatherIndexModel> * index;
@property (nonatomic, assign) NSInteger pm25;
@property (nonatomic, strong) NSMutableArray<HZJWeatherDataModel> * weather_data;

@end

@interface HZJWeatherModel : HZJWeatherResultModel

@property (nonatomic, strong) NSMutableArray<HZJWeatherResultsModel> * results;

@end
