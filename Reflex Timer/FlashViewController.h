//
//  FlashViewController.h
//  Reflex Timer
//
//  Created by Daniel Medina on 6/16/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayAgainViewController.h"

@interface FlashViewController : UIViewController  {
    
    float timeStart;
    
    IBOutlet UILabel *time;
    IBOutlet UIButton *lose;
    IBOutlet UIButton *stopTimer;
    
    NSDate *startDate;
    NSDate *holdW;
    float timeElapsing;
    
    NSTimer *Reflex;
    NSTimer *countDown;
    
    float randTime;
}
@property (nonatomic, retain) IBOutlet UILabel *time;
@property (nonatomic, retain) IBOutlet UIButton *stopTimer;
@property (nonatomic, retain) IBOutlet UIButton *lose;


-(void)setstarterTimer;
-(void)flashTimer;
-(void)flash;
-(void)timerStart;
-(IBAction)Timerstop;
-(IBAction)btnLose;

@end
