//
//  HZJWeatherManager.h
//  知途趣闻
//
//  Created by Jay on 2017/11/2.
//  Copyright © 2017年 hanzhijie. All rights reserved.
//

#import <Foundation/Foundation.h>
@class HZJWeatherModel;

typedef void(^HZJWeatherHandler)(HZJWeatherModel * dataModel);

typedef void(^errorBlock)(NSError *error);

@interface HZJWeatherManager : NSObject

- (void)fetchWeatherDataWithCity:(NSString *)city success:(HZJWeatherHandler)successBlock error:(errorBlock)errorBlock;

+ (instancetype)sharedInstance;

@end
