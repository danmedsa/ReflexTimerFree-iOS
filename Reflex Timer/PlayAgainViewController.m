//
//  PlayAgainViewController.m
//  Reflex Timer
//
//  Created by Daniel Medina on 6/20/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import "PlayAgainViewController.h"
#import "AppDelegate.h"

@implementation PlayAgainViewController
@synthesize lbl_fastest,Pwins,Newrecord,hs;

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
    NSLog(@"Play Again");

    
    finalTime.text = [NSString stringWithFormat:@"%.4f",finTime];
    
    if (screen == 4)
    {
        lbl_fastest.hidden = YES;
        Newrecord.hidden = YES;
        Pwins.hidden = NO;
        Pwins.text = winner;
    }
    if (screen == 1)
    {
        NSUserDefaults *Normalscores = [NSUserDefaults standardUserDefaults];
        
        float oldScore = [Normalscores floatForKey:@"NhighScore"];
        if (oldScore == 0)
        {
            Newrecord.hidden = NO;
            [hs setText:[NSString stringWithFormat:@"%.4f",finTime]];
            [Normalscores setFloat:finTime forKey:@"NhighScore"];
            [[NSUserDefaults standardUserDefaults] synchronize];

        }
        else if (oldScore > finTime)
        {
            Newrecord.hidden = NO;
            hs.text = [NSString stringWithFormat:@"%.4f",finTime];
            [Normalscores setFloat:finTime forKey:@"NhighScore"];
            [[NSUserDefaults standardUserDefaults] synchronize];
        }
        else
        {
            hs.text  = [NSString stringWithFormat:@"%.4f", oldScore];
        }
    }
    if (screen == 2)
    {
        NSUserDefaults *Hardscores = [NSUserDefaults standardUserDefaults];
        float oldScore = [Hardscores floatForKey:@"highScore"];
        if (oldScore == 0)
        {
            Newrecord.hidden = NO;
            [hs setText:[NSString stringWithFormat:@"%.4f",finTime]];
            [Hardscores setFloat:finTime forKey:@"highScore"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
        }
        else if (oldScore > finTime)
        {
            Newrecord.hidden = NO;
            hs.text = [NSString stringWithFormat:@"%.4f",finTime];
            [Hardscores setFloat:finTime forKey:@"highScore"];
            [[NSUserDefaults standardUserDefaults] synchronize];
        }
        else
        {
            hs.text  = [NSString stringWithFormat:@"%.4f", oldScore];
        }
    }
        if (screen == 3){
            {
                NSUserDefaults *TenRowscores = [NSUserDefaults standardUserDefaults];
                
                float oldScore = [TenRowscores floatForKey:@"TRhighScore"];
                if (oldScore == 0)
                {
                    Newrecord.hidden = NO;
                    [hs setText:[NSString stringWithFormat:@"%.4f",finTime]];
                    [TenRowscores setFloat:finTime forKey:@"TRhighScore"];
                    [[NSUserDefaults standardUserDefaults] synchronize];
                }

                else if (oldScore > finTime)
                {
                    Newrecord.hidden = NO;
                    hs.text = [NSString stringWithFormat:@"%.4f",finTime];
                    [TenRowscores setFloat:finTime forKey:@"TRhighScore"];
                    [[NSUserDefaults standardUserDefaults] synchronize];
                }
                else
                {
                    hs.text  = [NSString stringWithFormat:@"%.4f", oldScore];
                }
            }
        }
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
/*-(void)NormalgameOver
{
    NSUserDefaults *Normalscores = [NSUserDefaults standardUserDefaults];
    
        float oldScore = [Normalscores floatForKey:@"NhighScore"];
        if (oldScore == 0)
        {
            [hs setText:[NSString stringWithFormat:@"%.4f",finTime]];
        }
        else if (oldScore > finTime)
        {
            Newrecord.hidden = NO;
            hs.text = [NSString stringWithFormat:@"%.4f",finTime];
            [Normalscores setFloat:finTime forKey:@"NhighScore"];
            [[NSUserDefaults standardUserDefaults] synchronize];
        }
        else
        {
            hs.text  = [NSString stringWithFormat:@"%.4f", oldScore];
        }
    
}

-(void)HardgameOver
{
    NSUserDefaults *Hardscores = [NSUserDefaults standardUserDefaults];
    if ([Hardscores floatForKey:@"highScore"])
    {
        float oldScore = [Hardscores floatForKey:@"highScore"];
        if (oldScore > finTime)
        {
            
        Newrecord.hidden = NO;
        
        hs.text = [NSString stringWithFormat:@"%.4f",[[NSUserDefaults standardUserDefaults] floatForKey: @"highScore"]];
        
        [Hardscores setFloat:finTime forKey:@"NhighScore"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        }
        
        else
        {
            hs.text  = [NSString stringWithFormat:@"%.4f", finTime];
            
        }
    }
}

-(void)TenRowgameOver
{
    NSUserDefaults *TenRowscores = [NSUserDefaults standardUserDefaults];
    if ([TenRowscores floatForKey:@"TRhighScore"])
    {
        float oldScore = [TenRowscores floatForKey:@"TRhighScore"];
        if (oldScore > finTime)
        {
            
            Newrecord.hidden = NO;
            
            hs.text = [NSString stringWithFormat:@"%.4f",[[NSUserDefaults standardUserDefaults] floatForKey: @"highScore"]];
            
            [TenRowscores setFloat:finTime forKey:@"NhighScore"];
            [[NSUserDefaults standardUserDefaults] synchronize];
        }
        
        else
        {
            hs.text  = [NSString stringWithFormat:@"%.4f", finTime];
            
        }
    }
}

-(void) saveScore
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setFloat:finTime forKey:@"highScore"];
    [defaults setFloat:finTime forKey:@"highScore1"];
    [defaults setFloat:finTime forKey:@"highScore2"];
    [defaults setFloat:finTime forKey:@"highScore3"];
    [defaults setFloat:finTime forKey:@"highScore4"];

    [[NSUserDefaults standardUserDefaults] synchronize];

}*/

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
