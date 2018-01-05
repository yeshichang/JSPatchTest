//
//  AppDelegate.m
//  JSPatchTest
//
//  Created by mac on 2018/1/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "AppDelegate.h"
#import <JSPatchPlatform/JSPatch.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [JSPatch startWithAppKey:@"da57442e354865f2"];
    [JSPatch setupCallback:^(JPCallbackType type, NSDictionary *data, NSError *error) {
        if (type == JPCallbackTypeJSException) {
            NSAssert(NO, data[@"msg"]);
        }
    }];
    [JSPatch showDebugView];
    [JSPatch setupRSAPublicKey:@"-----BEGIN PUBLIC KEY-----\nMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC8YcGPxJK8iyLU533S7oldMLIF\na+IRFPrqV2p2Yuw8mcL4O3Be9YyJ7N6HS27pwsoC0gnEixsiOGpuRsq2HKxE176g\nnaQPPJ4pyT1NA/1F9LEVMeoXJJDhmB8gTjn7MtKf1Gi5LgmIaE7JicYVe2trROkO\ntnOLFtoX6e67bDxNWQIDAQAB\n-----END PUBLIC KEY-----"];
    [JSPatch sync];
//    [JSPatch testScriptInBundle];
    return YES;
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
