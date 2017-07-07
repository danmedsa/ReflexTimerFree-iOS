//
//  FlashViewController.h
//  Reflex Timer
//
//  Created by Daniel Medina on 6/16/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayAgainViewController.h"
#import "LoseViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface onevoneViewController : UIViewController <AVAudioPlayerDelegate>{

    float timeStart;
    
    AVAudioPlayer *sound;
    
    IBOutlet UILabel *time;
    IBOutlet UILabel *player1;
    IBOutlet UILabel *player2;
    IBOutlet UIButton *losep1;
    IBOutlet UIButton *stopTimerp1;
    IBOutlet UIButton *losep2;
    IBOutlet UIButton *stopTimerp2;
    
    NSDate *startDate;
    float timeElapsing;
    
    NSTimer *Reflex;
    NSTimer *countDown;
    
    float randTime;
}
@property (nonatomic, retain) IBOutlet UILabel *time;
@property (nonatomic, strong) IBOutlet UILabel *player2;
@property (nonatomic, retain) IBOutlet UIButton *stopTimerp1;
@property (nonatomic, retain) IBOutlet UIButton *losep1;
@property (nonatomic, retain) IBOutlet UIButton *stopTimerp2;
@property (nonatomic, retain) IBOutlet UIButton *losep2;


-(void)setstarterTimer;
-(void)flashTimer;
-(void)flash;
-(void)timerStart;
-(IBAction)Timerstop1;
-(IBAction)btnLose1;
-(IBAction)Timerstop2;
-(IBAction)btnLose2;
-(IBAction)playSound;

@end
