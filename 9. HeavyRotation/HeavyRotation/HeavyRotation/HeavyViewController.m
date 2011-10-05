//
//  HeavyViewController.m
//  HeavyRotation
//
//  Created by Jerry Tian on 10/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HeavyViewController.h"

@implementation HeavyViewController

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)x
{
    // Return YES if incoming orientation is Portrait
    // or either of the Landscapes, otherwise, return NO
    return (x == UIInterfaceOrientationPortrait) ||  UIInterfaceOrientationIsLandscape(x);
}

@end
