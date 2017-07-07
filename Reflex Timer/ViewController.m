//
//  ViewController.m
//  Reflex Timer
//
//  Created by Daniel Medina on 6/15/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "NormalModeViewController.h"


@interface ViewController ()

@end
@implementation ViewController


    

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    if([[NSUserDefaults standardUserDefaults] integerForKey:@"soundSetting"] == 0) {
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"soundSetting"];
    }
    
    if ([[NSUserDefaults standardUserDefaults] integerForKey:@"soundSetting"] == 1) {
        soundSwitch.on = YES;
    }
    else{
        soundSwitch.on = NO;
    }
    

    
    if (count == 5){
        [self RemoveAd];
    }
    count += 1;
}

- (void)viewWillAppear:(BOOL)animated {
    

}


-(IBAction)soundSwitch:(UISwitch *)sender{
    if(sender.isOn) {
       [[NSUserDefaults standardUserDefaults] setInteger:1 forKey:@"soundSetting"];
    }
    
    else {
        [[NSUserDefaults standardUserDefaults] setInteger:0 forKey:@"soundSetting"];
    }
    [[NSUserDefaults standardUserDefaults]synchronize];
}

-(IBAction)RemoveAd
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Reflex Timer"
                                                    message:@"If you are tired of the Ads, Get the Ad free Version now!"
                                                   delegate:self
                                          cancelButtonTitle:@"Later"
                                          otherButtonTitles:@"Get Now", nil];
    [alert show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
	
	if(buttonIndex == 1){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/reflex-timer/id737912374?ls=1&mt=8"]];
	}
}

-(IBAction)Normal_btn{
    if ([[NSUserDefaults standardUserDefaults] integerForKey:@"soundSetting"] == 1){
    NSString *path = [[NSBundle mainBundle]pathForResource:@"button-3" ofType:@"mp3"];
    sound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]    error:NULL];
    sound.delegate = self;
    sound.volume = 1.0;
    [sound play];
    }
}
-(IBAction)Hard_btn{
    if ([[NSUserDefaults standardUserDefaults] integerForKey:@"soundSetting"] == 1){
    NSString *path = [[NSBundle mainBundle]pathForResource:@"button-3" ofType:@"mp3"];
    sound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]    error:NULL];
    sound.delegate = self;
    sound.volume = 1.0;
    [sound play];
    }
}
-(IBAction)Ten_btn{
    if ([[NSUserDefaults standardUserDefaults] integerForKey:@"soundSetting"] == 1){
    NSString *path = [[NSBundle mainBundle]pathForResource:@"button-3" ofType:@"mp3"];
    sound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]    error:NULL];
    sound.delegate = self;
    sound.volume = 1.0;
    [sound play];
    }
}
-(IBAction)one_btn{
    if ([[NSUserDefaults standardUserDefaults] integerForKey:@"soundSetting"] == 1){
    NSString *path = [[NSBundle mainBundle]pathForResource:@"button-3" ofType:@"mp3"];
    sound = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:path]    error:NULL];
    sound.delegate = self;
    sound.volume = 1.0;
    [sound play];
    }
}

-(IBAction)setSettings{
    if (soundFX.hidden == YES) {
        soundFX.hidden = NO;
        soundSwitch.hidden = NO;
        menuSetting.hidden = NO;
    }
    else {
        menuSetting.hidden = YES;
        soundFX.hidden = YES;
        soundSwitch.hidden = YES;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
