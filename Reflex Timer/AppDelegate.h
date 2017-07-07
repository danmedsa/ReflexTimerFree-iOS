//
//  AppDelegate.h
//  Reflex Timer
//
//  Created by Daniel Medina on 6/15/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import <iAd/iAd.h>

extern float finTime;
extern NSString *winner;
extern int screen;
extern int count;

@interface AppDelegate : UIResponder <ADBannerViewDelegate,UIApplicationDelegate>{
    ADBannerView *_sharedAdBannerView;
    BOOL bannerIsVisible;
    
}

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) IBOutlet ADBannerView *adView;
@property (nonatomic, assign) BOOL adBannerViewIsVisible;

- (ADBannerView *)sharedAdBannerView;

@end
