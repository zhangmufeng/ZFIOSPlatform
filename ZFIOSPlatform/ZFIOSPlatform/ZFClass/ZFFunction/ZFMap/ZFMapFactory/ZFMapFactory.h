//
//  ZFMapFactory.h
//  ZFIOSPlatform
//
//  Created by 张木锋 on 2017/5/17.
//  Copyright © 2017年 COM.ZMF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZFMapFactory : NSObject

- (instancetype)initWithType:(NSInteger)type;

- (UIView *)viewsFormZFMapFactoryWithFrame:(CGRect)frame;

@end
