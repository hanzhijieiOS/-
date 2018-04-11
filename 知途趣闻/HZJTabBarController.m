//
//  HZJTabBarController.m
//  知途趣闻
//
//  Created by Jay on 2017/10/25.
//  Copyright © 2017年 hanzhijie. All rights reserved.
//

#import "HZJTabBarController.h"
#import "MMDrawerController.h"
#import "HZJLeftController.h"
#import "HZJNewsController.h"
#import "HZJUserController.h"

@interface HZJTabBarController ()

@property (nonatomic, strong) MMDrawerController *drawerController;

@end

@implementation HZJTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [[UITabBar appearance] setBarTintColor:[UIColor whiteColor]];
    HZJLeftController *leftVC = [[HZJLeftController alloc] init];
    HZJNewsController *newsVC = [[HZJNewsController alloc] init];
    HZJUserController *userVC = [[HZJUserController alloc] init];
    
    UINavigationController *leftNavC = [[UINavigationController alloc] initWithRootViewController:leftVC];
    UINavigationController *newsNavC = [[UINavigationController alloc] initWithRootViewController:newsVC];
    UINavigationController *userNavC = [[UINavigationController alloc] initWithRootViewController:userVC];
    
    userNavC.tabBarItem.title = @"我的";
    self.drawerController = [[MMDrawerController alloc] initWithCenterViewController:newsNavC leftDrawerViewController:leftNavC];
    self.drawerController.tabBarItem.title = @"首页";
    [self addChildViewController:self.drawerController];
    [self addChildViewController:userNavC];
    
    self.drawerController.openDrawerGestureModeMask = MMOpenDrawerGestureModeAll;
    self.drawerController.closeDrawerGestureModeMask = MMCloseDrawerGestureModeAll;
    self.drawerController.maximumLeftDrawerWidth = [UIScreen mainScreen].bounds.size.width / 2.0;
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
