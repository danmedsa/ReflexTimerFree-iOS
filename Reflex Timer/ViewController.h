//
//  ViewController.h
//  Reflex Timer
//
//  Created by Daniel Medina on 6/15/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <iAd/iAd.h>



@interface ViewController : UIViewController<ADBannerViewDelegate,AVAudioPlayerDelegate>{
    ADBannerView *bannerView;
    IBOutlet UIButton *RemoveAd;
    AVAudioPlayer *sound;
    IBOutlet UIButton *settings;
    IBOutlet UILabel *soundFX;
    IBOutlet UISwitch *soundSwitch;
    IBOutlet UIImageView *menuSetting;
    NSUserDefaults *soundSetting;
}
-(IBAction)RemoveAd;
-(IBAction)Normal_btn;
-(IBAction)Hard_btn;
-(IBAction)Ten_btn;
-(IBAction)one_btn;
-(IBAction)soundSwitch:(UISwitch *)sender;
-(IBAction)setSettings;


@end
