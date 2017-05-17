//
//  AppDelegate.m
//  ZFDemoPlatform
//
//  Created by 张木锋 on 2017/5/16.
//  Copyright © 2017年 COM.ZMF. All rights reserved.
//  http://www.jianshu.com/p/c59a5c92f859

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
// 百度 9654656 ZFIOSPlatform UjXgp1n2GdTHlPCmorhvNgvCN0Avqu9C	iOS端
// 高德 ZFIOSPlatform	191303aed90341967c09eab95caa9250	iOS平台	

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    [self.window setBackgroundColor:[UIColor whiteColor]];
    self.window.rootViewController = [[NSClassFromString(@"ZFTabBarController") alloc] init];
    
//    self.window.rootViewController = [[NSClassFromString(@"ZFMapTabBarControler") alloc] init];
    [self.window makeKeyAndVisible];
    return YES;
}

+ (AppDelegate *)appDelegate {
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
