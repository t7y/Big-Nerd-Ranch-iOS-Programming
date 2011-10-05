//
//  HypnoTimeAppDelegate.m
//  HypnoTime
//
//  Created by Jerry Tian on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "HypnoTimeAppDelegate.h"
#import "HypnosisViewController.h"
#import "CurrentTimeViewController.h"
#import "MapViewController.h"

@implementation HypnoTimeAppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Create the tabBarController
    UITabBarController *tabBarController = [[UITabBarController alloc] init];
    // Create two view controllers
    UIViewController *vc1 = [[HypnosisViewController alloc] init];
    UIViewController *vc2 = [[CurrentTimeViewController alloc] init];
    UIViewController *vc3 = [[MapViewController alloc] init];
    
    // Make an array containing the two view controllers
    NSArray *viewControllers = [NSArray arrayWithObjects:vc1, vc2, vc3, nil];
    
    // The viewControllers array retains vc1 and vc2, we can release
    // our ownership of them in this method
    [vc1 release];
    [vc2 release];
    [vc3 release];
    
    // Attach them to the tab bar controller
    [tabBarController setViewControllers:viewControllers];
    
    // Set tabBarController as rootViewController of window
    [[self window] setRootViewController:tabBarController];
    // The window retains tabBarController, we can release our reference
    [tabBarController release];
    
    // Override point for customization after application launch.
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

@end
