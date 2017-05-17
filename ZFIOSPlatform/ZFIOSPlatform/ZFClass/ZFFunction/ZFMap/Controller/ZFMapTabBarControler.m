//
//  ZFMapTabBarControler.m
//  ZFIOSPlatform
//
//  Created by 张木锋 on 2017/5/17.
//  Copyright © 2017年 COM.ZMF. All rights reserved.
//

#import "ZFMapTabBarControler.h"
#import "ZFMapNavigationController.h"

@interface ZFMapTabBarControler ()

@end

@implementation ZFMapTabBarControler

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addSubViewControllers];
}

- (void)addSubViewControllers {
    
    UIViewController *baiDuMap = [self loadChildViewControllerWithClassName:@"ZFBaiDuMapViewController" andTitle:@"ZFBaiDuMap" andImageName:@"icon_file_word"];
    UIViewController *gaoDeMap = [self loadChildViewControllerWithClassName:@"ZFFunctionViewController" andTitle:@"ZFGaoDeMap" andImageName:@"icon_file_excel"];

    self.viewControllers = @[baiDuMap, gaoDeMap];
    
    self.tabBar.translucent = NO;
}

- (UIViewController *)loadChildViewControllerWithClassName:(NSString *)className andTitle:(NSString *)title andImageName:(NSString *)imageName {
    UIViewController *viewController = [[NSClassFromString(className) alloc] init];
    viewController.title = title;
    viewController.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    NSString *selectedImageName = [imageName stringByAppendingString:@""];
    viewController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.view.backgroundColor =  [UIColor whiteColor];
    
    return [[ZFMapNavigationController alloc] initWithRootViewController:viewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
