//
//  FlashViewController.m
//  Reflex Timer
//
//  Created by Daniel Medina on 6/16/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import "FlashViewController.h"
#import "AppDelegate.h"

@implementation FlashViewController
@synthesize time, stopTimer,lose;


- (void) setstarterTimer{
    timeStart= (arc4random() % 3);
    timeStart += 1;
    countDown = [NSTimer scheduledTimerWithTimeInterval:0.1f target:self selector:@selector(timerStart) userInfo:nil repeats:YES];
}


- (void) timerStart{
    timeStart -= 0.100;
    
    if (timeStart <= 0){
        [countDown invalidate];
        timeStart = 0.100;
        countDown = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(flashTimer) userInfo:nil repeats:YES];
        self.view.backgroundColor = [UIColor whiteColor];
        [self flash];
        holdW = [NSDate date];
    }
}
-(void)flashTimer
{
    float white = [holdW timeIntervalSinceNow];
    stopTimer.hidden = YES;
    lose.hidden = YES;
    timeStart -= 0.1f;
    if(white <= -.03){
        self.view.backgroundColor = [UIColor blackColor];
        [countDown invalidate];
        timeStart = 0;
        countDown = [NSTimer scheduledTimerWithTimeInterval:1.0f/1000.0f target:self selector:@selector(flash) userInfo:nil repeats:YES];
        startDate = [NSDate date];
    }
}

- (void) flash
{
    timeElapsing = -1*[startDate timeIntervalSinceNow];
    time.text = [NSString stringWithFormat:@"%.4f",timeElapsing];
    time.hidden = NO;
    stopTimer.hidden = NO;
}

-(IBAction)Timerstop
{
    NSLog(@"%.4f",timeElapsing);
    finTime = timeElapsing;
    [countDown invalidate];
    //PlayAgainViewController *playAgain = [[PlayAgainViewController alloc] init];
    //[playAgain NormalgameOver];
}
-(IBAction)btnLose
{
    [countDown invalidate];
}


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
	// Do any additional setup after loading the view.
    stopTimer.hidden = YES;
    lose.hidden = NO;
    time.hidden = YES;
    [self setstarterTimer];
    screen = 1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
