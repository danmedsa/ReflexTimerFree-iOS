//
//  OneVSOneMenuViewController.h
//  Reflex Timer Free
//
//  Created by Daniel Medina on 10/31/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface OneVSOneMenuViewController : UIViewController<AVAudioPlayerDelegate>{
    AVAudioPlayer *sound;
}

-(IBAction)playSound;
-(IBAction) backk;


@end
