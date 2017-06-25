//
//  ZFGaoDeMapViewController.m
//  ZFIOSPlatform
//
//  Created by 张木锋 on 2017/5/17.
//  Copyright © 2017年 COM.ZMF. All rights reserved.
//

#import "ZFGaoDeMapViewController.h"
#import "ZFMapFactory.h"

@interface ZFGaoDeMapViewController ()

@end

@implementation ZFGaoDeMapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    self.navigationItem.title  = @"高德地图";
    
    ZFMapFactory *factory = [[ZFMapFactory alloc] initWithType:1];
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
