//
//  TenRowFlashViewController.h
//  Reflex Timer
//
//  Created by Daniel Medina on 7/3/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PlayAgainViewController.h"

@interface  TenRowFlashViewController : UIViewController
{
    
    float timeStart;
    int i;
    int xmin;
    int ymin;
    int y;
    int x;
    IBOutlet UILabel *time;
    IBOutlet UIButton *lose;
    IBOutlet UIButton *stopTimer;
    IBOutlet UIButton *last;
    
    NSDate *startDate;
    float timeElapsing;
    
    NSTimer *Reflex;
    NSTimer *countDown;
    
    float randTime;
}
@property (nonatomic, retain) IBOutlet UILabel *time;
@property (nonatomic, retain) IBOutlet UIButton *stopTimer;
@property (nonatomic, retain) IBOutlet UIButton *lose;
@property (nonatomic, assign) int i;

-(void)setstarterTimer;
-(void)flashTimer;
-(void)flash;
-(void)timerStart;
-(IBAction)Timerstop;
-(IBAction)btnLose;

@end

