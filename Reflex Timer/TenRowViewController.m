//
//  ViewController.m
//  Reflex Timer
//
//  Created by Daniel Medina on 6/15/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import "TenRowViewController.h"
#import "AppDelegate.h"

@interface TenRowViewController ()

@end
@implementation TenRowViewController


    

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    bannerViewAdMob_.delegate = self;
//    bannerViewAdMob_ = [[GADBannerView alloc] initWithFrame:CGRectMake(0.0, self.view.frame.size.height-GAD_SIZE_320x50.height, GAD_SIZE_320x50.width, GAD_SIZE_320x50.height)];
//    // Create a view of the standard size at the top of the screen.
//    // Available AdSize constants are explained in GADAdSize.h.
//    //bannerViewAdMob_ = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner];
//    
//    // Specify the ad's "unit identifier". This is your AdMob Publisher ID.
//    bannerViewAdMob_.adUnitID = @"ca-app-pub-1927283456423197/7491842264";
//    
//    // Let the runtime know which UIViewController to restore after taking
//    // the user wherever the ad goes and add it to the view hierarchy.
//    bannerViewAdMob_.rootViewController = self;
//    [self.view addSubview:bannerViewAdMob_];
//    
//    // Initiate a generic request to load it with an ad.
//    [bannerViewAdMob_ loadRequest:[GADRequest request]];
}

-(IBAction)playSound{
    if ([[NSUserDefaults standardUserDefaults] integerForKey:@"soundSetting"] == 1){
    NSString *path = [[NSBundle mainBundle]pathForResource:@"button-3" ofType:@"mp3"];
    sound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]    error:NULL];
    sound.delegate = self;
    sound.volume = 1.0;
    [sound play];
    }
}

-(IBAction) backk{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
