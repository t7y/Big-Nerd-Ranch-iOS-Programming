//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Jerry Tian on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (void)loadView
{
    HypnosisView *hv = [[HypnosisView alloc] initWithFrame:CGRectZero];
    [hv setBackgroundColor:[UIColor whiteColor]];
    [self setView:hv];
    [hv release];
}

- (id)init {
    // Call the superclass's designated initializer
    self = [super initWithNibName:nil
                           bundle:nil];
    if (self) {
        // Get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        // Give it a label
        [tbi setTitle:@"Hypnosis"];
        // Create a UIImage from a file
        UIImage *i = [UIImage imageNamed:@"Hypno.png"];
        // Put that image on the tab bar item
        [tbi setImage:i];
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle
{
    // Disregard parameters - nib name is an implementation detail
    return [self init];
}
// This method gets called automatically when the view is created
- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Loaded the view for HypnosisViewController");
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    NSLog(@"Monitoring accelerometer");
    UIAccelerometer *a = [UIAccelerometer sharedAccelerometer];
    // Receive updates every 1/10th of a second.
    [a setUpdateInterval:0.1];
    [a setDelegate:self];
    [[self view] becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [[UIAccelerometer sharedAccelerometer] setDelegate:nil];
}

- (void)accelerometer:(UIAccelerometer *)meter
        didAccelerate:(UIAcceleration *)accel
{
    HypnosisView *hv = (HypnosisView *)[self view];
    
    float xShift = [hv xShift] * 0.8 + [accel x] * 2.0; 
    float yShift = [hv yShift] * 0.8 - [accel y] * 2.0; 
    [hv setXShift:xShift];
    [hv setYShift:yShift];
    
    // Redraw the view
    [hv setNeedsDisplay];
}

@end
