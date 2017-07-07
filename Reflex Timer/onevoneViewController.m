//
//  FlashViewController.m
//  Reflex Timer
//
//  Created by Daniel Medina on 6/16/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import "onevoneViewController.h"
#import "AppDelegate.h"

@implementation onevoneViewController
@synthesize time, stopTimerp1,losep1,stopTimerp2,losep2,player2;


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
        self.view.backgroundColor = [UIColor whiteColor];
        [self flash];
    }
}
-(void)flashTimer
{
    stopTimerp1.hidden = YES;
    losep1.hidden = YES;
    stopTimerp2.hidden = YES;
    losep2.hidden = YES;
    timeStart -= 0.1f;
    if(timeStart <= 0){
        self.view.backgroundColor = [UIColor blackColor];
        [countDown invalidate];
        timeStart = 0;
        countDown = [NSTimer scheduledTimerWithTimeInterval:0.001 target:self selector:@selector(flash) userInfo:nil repeats:YES];
        startDate = [NSDate date];
    }
}

- (void) flash
{
    timeElapsing = -1*[startDate timeIntervalSinceNow];
    time.text = [NSString stringWithFormat:@"%.4f",timeElapsing];
    time.hidden = NO;
    stopTimerp1.hidden = NO;
    stopTimerp2.hidden = NO;
}

-(IBAction)Timerstop1
{
    NSLog(@"%.4f",timeElapsing);
    finTime = timeElapsing;
    [countDown invalidate];
    PlayAgainViewController *playAgain = [[PlayAgainViewController alloc] init];
    playAgain.lbl_fastest.hidden = YES;
    playAgain.Pwins.hidden = NO;
    winner = @"Player 1 Wins!";
    //[playAgain NormalgameOver];
}
-(IBAction)btnLose1
{
    LoseViewController *Lose = [[LoseViewController alloc] init];
    winner = @"Player 1 Loses!";
    Lose.Plose.hidden = NO;
    [countDown invalidate];
}

-(IBAction)Timerstop2
{
    NSLog(@"%.4f",timeElapsing);
    finTime = timeElapsing;
    [countDown invalidate];
    PlayAgainViewController *playAgain = [[PlayAgainViewController alloc] init];
    playAgain.lbl_fastest.hidden = YES;
    playAgain.Pwins.hidden = NO;
    winner = @"Player 2 Wins!";
    //[playAgain NormalgameOver];
}

-(IBAction)btnLose2
{
    LoseViewController *Lose = [[LoseViewController alloc] init];
    winner = @"Player 2 Loses!";
    Lose.Plose.hidden = NO;
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
    player2.transform = CGAffineTransformMakeRotation(3.141592);
    screen = 4;
    stopTimerp1.hidden = YES;
    losep1.hidden = NO;
    stopTimerp2.hidden = YES;
    losep2.hidden = NO;
    time.hidden = YES;
    [self setstarterTimer];
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

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
