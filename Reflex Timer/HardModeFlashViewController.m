//
//  HardModeFlashViewController.m
//  Reflex Timer
//
//  Created by Daniel Medina on 7/3/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import "HardModeFlashViewController.h"
#import "AppDelegate.h"

@implementation HardModeFlashViewController
@synthesize time, stopTimer,lose;

- (void) setstarterTimer{
    timeStart= (arc4random() % 3);
    timeStart += 1;
    countDown = [NSTimer scheduledTimerWithTimeInterval:0.1f target:self selector:@selector(timerStart) userInfo:nil repeats:YES];
}


- (void) timerStart{
    timeStart -= 0.1;
    
    if (timeStart <= 0){
        [countDown invalidate];
        timeStart = 0.2f;
        countDown = [NSTimer scheduledTimerWithTimeInterval:0.02 target:self selector:@selector(flashTimer) userInfo:nil repeats:YES];
        stopTimer.hidden = NO;
        [self flash];
    }
}
-(void)flashTimer
{
    stopTimer.hidden = YES;
    lose.hidden = YES;
    timeStart -= 0.1f;
    if(timeStart <= 0){
        stopTimer.hidden = YES;
        [countDown invalidate];
        timeStart = 0;
        countDown = [NSTimer scheduledTimerWithTimeInterval:0.1f/1000.00f target:self selector:@selector(flash) userInfo:nil repeats:YES];
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
    //[playAgain HardgameOver];
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
    screen = 2;
    CGSize screenSize = [[UIScreen mainScreen] bounds].size;
    if (screenSize.height > 480.0f) {
        int xmin = ([stopTimer frame].size.width)/2;
        int ymin = ([stopTimer frame].size.height)/2;
        
        int x = xmin + (arc4random() % 320) - 50;
        int y = ymin + (arc4random() % 568) - 50;
        
        [stopTimer setCenter:CGPointMake(x, y)];
    }
    else {
    int xmin = ([stopTimer frame].size.width)/2;
    int ymin = ([stopTimer frame].size.height)/2;
    
    int x = xmin + (arc4random() % 260) - 50;
    int y = ymin + (arc4random() % 420) - 50;
    
    [stopTimer setCenter:CGPointMake(x, y)];
    }
    
    stopTimer.hidden = YES;
    lose.hidden = NO;
    time.hidden = YES;
    [self setstarterTimer];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

