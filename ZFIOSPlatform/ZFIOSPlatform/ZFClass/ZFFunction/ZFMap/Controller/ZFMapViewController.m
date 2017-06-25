//
//  ZFMapViewController.m
//  ZFIOSPlatform
//
//  Created by 张木锋 on 2017/5/17.
//  Copyright © 2017年 COM.ZMF. All rights reserved.
//

#import "ZFMapViewController.h"
#import "ZFMapFactory.h"
#import "ZFMapTabBarControler.h"

@interface ZFMapViewController ()

@end

@implementation ZFMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.title = @"地图";
    
    
   
    
    
    
    ZFMapFactory *factory = [[ZFMapFactory alloc] initWithType:1];
    UIView* mapView = [factory viewsFormZFMapFactoryWithFrame:self.view.frame];
    [self.view addSubview:mapView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
