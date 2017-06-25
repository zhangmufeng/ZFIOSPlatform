//
//  ZFTabBarController.m
//  ZFIOSPlatform
//
//  Created by 张木锋 on 2017/5/16.
//  Copyright © 2017年 COM.ZMF. All rights reserved.
//

#import "ZFTabBarController.h"
#import "ZFNavigationController.h"

@interface ZFTabBarController ()

@end

@implementation ZFTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addSubViewControllers];
}

- (void)addSubViewControllers {
    
    UIViewController *classVC = [self loadChildViewControllerWithClassName:@"ZFClassViewController" andTitle:@"Class" andImageName:@"icon_file_word"];
    UIViewController *functionVC = [self loadChildViewControllerWithClassName:@"ZFFunctionViewController" andTitle:@"Function" andImageName:@"icon_file_excel"];
    UIViewController *uiVC = [self loadChildViewControllerWithClassName:@"ZFUIViewController" andTitle:@"UI" andImageName:@"icon_file_ppt"];
    UIViewController *otherVC = [self loadChildViewControllerWithClassName:@"ZFOtherViewController" andTitle:@"Other" andImageName:@"icon_file_other"];

    [self setViewControllers:@[classVC, functionVC, uiVC, otherVC] animated:YES];
    self.tabBar.translucent = NO;
}

- (UIViewController *)loadChildViewControllerWithClassName:(NSString *)className andTitle:(NSString *)title andImageName:(NSString *)imageName {
    UIViewController *viewController = [[NSClassFromString(className) alloc] init];
    viewController.title = title;
    viewController.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
    NSString *selectedImageName = [imageName stringByAppendingString:@""];
    viewController.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    viewController.view.backgroundColor =  [UIColor whiteColor];
    
    return [[ZFNavigationController alloc] initWithRootViewController:viewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
