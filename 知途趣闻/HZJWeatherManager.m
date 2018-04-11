//
//  HZJWeatherManager.m
//  知途趣闻
//
//  Created by Jay on 2017/11/2.
//  Copyright © 2017年 hanzhijie. All rights reserved.
//

#import "HZJWeatherManager.h"
#import "AFNetworking.h"
#import "HZJWeatherModel.h"

@implementation HZJWeatherManager

static id instance = nil;

+ (instancetype)sharedInstance{
    if (!instance) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            instance = [[self alloc] init];
        });
    }
    return instance;
}

- (void)fetchWeatherDataWithCity:(NSString *)city success:(HZJWeatherHandler )successBlock error:(errorBlock)errorBlock{
    NSString *urlStr = [NSString stringWithFormat:@"http://api.map.baidu.com/telematics/v3/weather?location=%@&output=json&mcode=com.ccs.Weather&ak=CG9FDDZQejS8pGXknrx4j2ah",city];
    [[AFHTTPSessionManager manager] GET:urlStr parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSError *error = nil;
        HZJWeatherModel *dataModel = [[HZJWeatherModel alloc] initWithDictionary:responseObject error:&error];
        NSLog(@"datamodel:%@",dataModel);
        if (error) {
            errorBlock(error);
        }else{
            successBlock(dataModel);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        errorBlock(error);
    }];
}

@end
