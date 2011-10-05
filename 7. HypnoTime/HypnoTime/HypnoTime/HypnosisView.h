//
//  HypnosisView.h
//  Hypnosister
//
//  Created by Jerry Tian on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HypnosisView : UIView
{
    UIColor *stripeColor;
    float xShift, yShift;
}

@property (nonatomic, assign) float xShift; 
@property (nonatomic, assign) float yShift; 

@end
