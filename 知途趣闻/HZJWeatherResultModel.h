//
//  HZJWeatherResultModel.h
//  知途趣闻
//
//  Created by Jay on 2017/11/2.
//  Copyright © 2017年 hanzhijie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "JSONModel.h"

@interface HZJWeatherResultModel : JSONModel

@property (nonatomic, copy) NSString *date;
@property (nonatomic, assign) NSInteger error;
@property (nonatomic, copy) NSString *status;

@end
