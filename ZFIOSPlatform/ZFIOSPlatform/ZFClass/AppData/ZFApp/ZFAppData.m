//
//  ZFAppData.m
//  ZFIOSPlatform
//
//  Created by 张木锋 on 2017/5/17.
//  Copyright © 2017年 COM.ZMF. All rights reserved.
//

#import "ZFAppData.h"


@implementation ZFAppData
+ (ZFAppData *)sharedAppData {
    static ZFAppData *sharedAppData = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedAppData = [[ZFAppData alloc] init];
    });
    return sharedAppData;
}

@end
