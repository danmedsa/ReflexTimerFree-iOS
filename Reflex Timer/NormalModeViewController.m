//
//  MenuViewController.m
//  Reflex Timer
//
//  Created by Daniel Medina on 6/20/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import "NormalModeViewController.h"
#import "AppDelegate.h"


@interface NormalModeViewController ()

@end

@implementation NormalModeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Normal Mode");

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
