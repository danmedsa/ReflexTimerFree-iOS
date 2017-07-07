//
//  MenuViewController.h
//  Reflex Timer
//
//  Created by Daniel Medina on 6/20/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>


@interface NormalModeViewController : UIViewController<AVAudioPlayerDelegate>{
    AVAudioPlayer *sound;
}

-(IBAction)playSound;
-(IBAction) backk;


@end
