//
//  CurrentTimeViewController.h
//  HypnoTime
//
//  Created by Jerry Tian on 10/3/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CurrentTimeViewController : UIViewController
{
    IBOutlet UILabel *timeLabel;
}
- (IBAction)showCurrentTime:(id)sender;
@end
