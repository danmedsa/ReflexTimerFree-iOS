//
//  LoseViewController.h
//  Reflex Timer
//
//  Created by Daniel Medina on 6/20/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface LoseViewController : UIViewController<AVAudioPlayerDelegate>
{
    IBOutlet UILabel *Plose;
    AVAudioPlayer *sound;
    

}
@property (nonatomic,strong) IBOutlet UILabel *Plose;

-(IBAction)playSound;
@end
