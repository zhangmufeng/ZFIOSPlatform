//
//  ZFBaiDuMapViewController.m
//  ZFIOSPlatform
//
//  Created by 张木锋 on 2017/5/17.
//  Copyright © 2017年 COM.ZMF. All rights reserved.
//

#import "ZFBaiDuMapViewController.h"
#import "ZFMapFactory.h"

@interface ZFBaiDuMapViewController ()

@end

@implementation ZFBaiDuMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.navigationItem.title = @"百度地图";
    
    ZFMapFactory *factory = [[ZFMapFactory alloc] initWithType:0];
    UIView* mapView = [factory viewsFormZFMapFactoryWithFrame:self.view.frame];
    [self.view addSubview:mapView];
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
