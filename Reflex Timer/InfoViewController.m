//
//  InfoViewController.m
//  Reflex Timer
//
//  Created by Daniel Medina on 7/23/13.
//  Copyright (c) 2013 Medalabs Development. All rights reserved.
//

#import "InfoViewController.h"

@interface InfoViewController ()

@end

@implementation InfoViewController


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
    self.navigationItem.title=@"Info";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Back"
                                   style:UIBarButtonItemStylePlain
                                   target:nil
                                   action:nil];
    self.navigationItem.backBarButtonItem=backButton;
}
- (IBAction) appWebsite
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.medalabsdevelopment.com"]];
}

- (IBAction) Donations
{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://medalabsdevelopment.com/Donations.html"]];
}

- (IBAction)backk{
[self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
