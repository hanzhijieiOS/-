//
//  HZJNewsDetailController.m
//  知途趣闻
//
//  Created by Jay on 2017/10/31.
//  Copyright © 2017年 hanzhijie. All rights reserved.
//

#import "HZJNewsDetailController.h"
#import <WebKit/WebKit.h>

@interface HZJNewsDetailController ()

@property (nonatomic, strong) WKWebView *webView;

@end

@implementation HZJNewsDetailController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView = [[WKWebView alloc] initWithFrame:self.view.frame];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:self.url]]];
    [self.view addSubview:self.webView];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
