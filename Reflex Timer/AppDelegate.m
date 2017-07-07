//
//  AppDelegate.m
//  Reflex Timer
//
//  Created by Daniel Medina on 6/15/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import "AppDelegate.h"

float finTime;
NSString *winner;
int screen;
int count = 0;


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    return YES;
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner {
    NSLog(@"bannerViewDidLoadAD");
    if (!_adBannerViewIsVisible) {
        _adBannerViewIsVisible = YES;
        [[NSNotificationCenter defaultCenter] postNotificationName:@"adjustAdBannerView" object:nil];
    }
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    
    NSLog(@"BannerAd didfailtoreceive");
    if (_adBannerViewIsVisible) {
        _adBannerViewIsVisible = NO;
        [[NSNotificationCenter defaultCenter] postNotificationName:@"adjustAdBannerView" object:nil];
    }
}

- (ADBannerView *)sharedAdBannerView
{
    if (_sharedAdBannerView == nil) {
        
        Class classAdBannerView = NSClassFromString(@"ADBannerView");
        
        if (classAdBannerView != nil) {
            _sharedAdBannerView = [[classAdBannerView alloc] initWithFrame:CGRectZero];
            [_sharedAdBannerView setFrame:CGRectOffset([_sharedAdBannerView frame], 0,
                                                       -(50))];
            [_sharedAdBannerView setDelegate:self];
        }
    }
    
    return _sharedAdBannerView;
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
