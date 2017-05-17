//
//  ZFMapFactory.m
//  ZFIOSPlatform
//
//  Created by 张木锋 on 2017/5/17.
//  Copyright © 2017年 COM.ZMF. All rights reserved.
//

#import "ZFMapFactory.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapComponent.h>//引入地图功能所有的头文件
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

@interface ZFMapFactory ()
@property (strong, nonatomic) UIView *mapView;
@property (assign, nonatomic) NSInteger type;
@end

@implementation ZFMapFactory
- (instancetype)initWithType:(NSInteger)type {
    if (self = [super init]) {
        //枚举也是可以(自己去改)
        _type = type;
        if (_type == 0) {
            BMKMapManager* _mapManager = [[BMKMapManager alloc]init];
            // 如果要关注网络及授权验证事件，请设定     generalDelegate参数
            BOOL ret = [_mapManager start:@"R2I4V1hYh2ylwLNXU6jE4i3eUCXvIdft"  generalDelegate:nil];
            if (!ret) {
                NSLog(@"manager start failed!");
            }
        }else if(_type == 1){
            [AMapServices sharedServices].apiKey =@"191303aed90341967c09eab95caa9250";
        }

    }
    return self;
}

- (UIView *)viewsFormZFMapFactoryWithFrame:(CGRect)frame {
    switch (_type) {
        case 0:
            if (_mapView == nil) {
                _mapView = [[BMKMapView alloc]initWithFrame:frame];
            }
            break;
        case 1:
            _mapView = [[MAMapView alloc] initWithFrame:frame];
            break;
        case 2:
            _mapView = [[MAMapView alloc] initWithFrame:frame];
            break;
        case 3:
            _mapView = [[MAMapView alloc] initWithFrame:frame];
            break;
            
            
        default:
            break;
    }
    return _mapView;

}
@end
