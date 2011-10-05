//
//  CurrentTimeViewController.m
//  HypnoTime
//
//  Created by Jerry Tian on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CurrentTimeViewController.h"

@implementation CurrentTimeViewController

- (id)init {
    // Call the superclass's designated initializer
    self = [super initWithNibName:@"CurrentTimeViewController"
                           bundle:nil];
    if (self) {
        // Get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        // Give it a label
        [tbi setTitle:@"Time"];
        UIImage *i = [UIImage imageNamed:@"Time.png"]; 
        [tbi setImage:i];
    }
    return self;
}

- (id)initWithNibName:(NSString *)nibName bundle:(NSBundle *)bundle
{
    // Disregard parameters - implementation detail
    return [self init];
}

- (IBAction)showCurrentTime:(id)sender
{
    NSDate *now = [NSDate date];
    // Static here means "only once." The *variable* formatter
    // is created when the program is first loaded into memory.
    // The first time this method runs, formatter will
    // be nil and the if-block will execute, creating
    // an NSDateFormatter object that formatter will point to.
    // Subsequent entry into this method will reuse the same
    // NSDateFormatter object.
    static NSDateFormatter *formatter = nil;
    if (!formatter) {
        formatter = [[NSDateFormatter alloc] init];
        [formatter setTimeStyle:NSDateFormatterShortStyle];
    }
    [timeLabel setText:[formatter stringFromDate:now]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Loaded the view for CurrentTimeViewController");
    [[self view] setBackgroundColor:[UIColor yellowColor]];
}

- (void)viewDidUnload
{
    NSLog(@"CurrentTimeViewController's view was unloaded due to memory warning");
    [super viewDidUnload];
    [timeLabel release];
    timeLabel = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    NSLog(@"CurrentTimeViewController will appear");
    [super viewWillAppear:animated];
    [self showCurrentTime:nil];
}
- (void)viewWillDisappear:(BOOL)animated
{
    NSLog(@"CurrentTimeViewController will Disappear");
    [super viewWillDisappear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    NSLog(@"CurrentTimeViewController did appear");
    [super viewDidAppear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    NSLog(@"CurrentTimeViewController did DISappear");
    [super viewDidDisappear:animated];
}

- (void)dealloc
{
    [timeLabel release];
    [super dealloc];
}

@end
