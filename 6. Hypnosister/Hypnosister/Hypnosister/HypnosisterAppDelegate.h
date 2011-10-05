//
//  HypnosisterAppDelegate.h
//  Hypnosister
//
//  Created by Jerry Tian on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

// This is a "forward declaration"
@class HypnosisView;

@interface HypnosisterAppDelegate : NSObject <UIApplicationDelegate, UIScrollViewDelegate>
{
    HypnosisView *view;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
