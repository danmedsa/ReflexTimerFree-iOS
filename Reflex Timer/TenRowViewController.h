//
//  ViewController.h
//  Reflex Timer
//
//  Created by Daniel Medina on 6/15/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface TenRowViewController : UIViewController <AVAudioPlayerDelegate>{
    AVAudioPlayer *sound;
}

-(IBAction)playSound;
-(IBAction) backk;



//Tiempo

@end
