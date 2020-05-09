//
//  AppDelegate.m
//  测试
//
//  Created by yanglin on 2019/11/27.
//  Copyright © 2019 Softisland. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "MyHBDViewController.h"
#import <HBDNavigationController.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    if (@available(iOS 13.0, *)) {
        
    } else {
        ViewController *vc0 = [ViewController new];
        vc0.title = @"ViewController";
        UINavigationController *navVc = [[UINavigationController alloc] initWithRootViewController:vc0];
        
        MyHBDViewController *vc1 = [MyHBDViewController new];
        vc1.title = @"HBD";
        HBDNavigationController *hbdNav = [[HBDNavigationController alloc] initWithRootViewController:vc1];
        
        UITabBarController *tab = [[UITabBarController alloc] init];
        tab.viewControllers = @[navVc, hbdNav];

        UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
        window.backgroundColor = [UIColor whiteColor];
        window.rootViewController = tab;
        [window makeKeyAndVisible];
        self.window = window;
    }

    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
