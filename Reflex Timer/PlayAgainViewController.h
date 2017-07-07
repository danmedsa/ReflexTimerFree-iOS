//
//  PlayAgainViewController.h
//  Reflex Timer
//
//  Created by Daniel Medina on 6/20/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface PlayAgainViewController : UIViewController<AVAudioPlayerDelegate>
{
    AVAudioPlayer *sound;
    
    IBOutlet UILabel *finalTime;
    IBOutlet UILabel *hs;
    IBOutlet UILabel *Pwins;
    
    IBOutlet UILabel *lbl_fastest;
    IBOutlet UILabel *Newrecord;
    
    float Nhighscore;
    
}

@property(nonatomic,strong) IBOutlet UILabel *lbl_fastest;
@property(nonatomic,strong) IBOutlet UILabel *Pwins;
@property(nonatomic,strong) IBOutlet UILabel *Newrecord;
@property(nonatomic,strong) IBOutlet UILabel *hs;

-(IBAction)playSound;

/*
- (void) NormalgameOver;
- (void) HardgameOver;
- (void) TenRowgameOver;
*/
@end
