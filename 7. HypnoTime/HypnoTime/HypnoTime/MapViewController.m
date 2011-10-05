//
//  MapViewController.m
//  HypnoTime
//
//  Created by Jerry Tian on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "MapViewController.h"

@implementation MapViewController

- (id)init
{    
    self = [super initWithNibName:@"MapViewController"
                           bundle:nil];
    if (self) {
        // Get the tab bar item
        UITabBarItem *tbi = [self tabBarItem];
        // Give it a label
        [tbi setTitle:@"Map"];
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


- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)u
{
    CLLocationCoordinate2D loc = [u coordinate];
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
    [worldView setRegion:region animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"Loaded the view for MapViewController");
    [worldView setShowsUserLocation:YES];
}

- (void)viewDidUnload
{
    NSLog(@"MapViewController's view was unloaded due to memory warning");
    [super viewDidUnload];
    [worldView release];
    worldView = nil;
}

- (void)dealloc
{
    [super dealloc];
}


@end
