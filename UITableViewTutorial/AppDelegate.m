//
//  AppDelegate.m
//  UITableViewTutorial
//
//  Created by Alexis Kinsella on 30/04/13.
//  Copyright (c) 2013 Xebia. All rights reserved.
//

#import "AppDelegate.h"
#import "AFHTTPRequestOperationLogger.h"
#import "SDURLCache.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self setupUrlCache];
    [self setupNetworkingLogger];

    return YES;
}

- (void)setupUrlCache {
    SDURLCache *URLCache = [[SDURLCache alloc] initWithMemoryCapacity:1024*1024*2
                                                         diskCapacity:1024*1024*20
                                                             diskPath:[SDURLCache defaultCachePath]];

    [NSURLCache setSharedURLCache:URLCache];
}

- (void)setupNetworkingLogger {
    [[AFHTTPRequestOperationLogger sharedLogger] startLogging];
    [[AFHTTPRequestOperationLogger sharedLogger] setLevel:AFLoggerLevelDebug];
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
