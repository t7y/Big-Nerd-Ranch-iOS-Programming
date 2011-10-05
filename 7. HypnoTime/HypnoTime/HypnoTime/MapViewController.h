//
//  MapViewController.h
//  HypnoTime
//
//  Created by Jerry Tian on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController<MKMapViewDelegate>
{
    IBOutlet MKMapView *worldView;
}

@end
