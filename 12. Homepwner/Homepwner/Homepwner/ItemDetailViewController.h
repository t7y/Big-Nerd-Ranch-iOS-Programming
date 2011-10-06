//
//  ItemDetailViewController.h
//  Homepwner
//
//  Created by Jerry Tian on 10/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Possession;

@interface ItemDetailViewController : UIViewController {
    UITextField *nameField;
    UITextField *valueField;
    UITextField *serialNumberField;    
    UILabel *dateLabel;
    
    Possession *possession;
}

@property (nonatomic, retain) IBOutlet UITextField *nameField;
@property (nonatomic, retain) IBOutlet UITextField *valueField;
@property (nonatomic, retain) IBOutlet UITextField *serialNumberField;
@property (nonatomic, retain) IBOutlet UILabel *dateLabel;

@property (nonatomic, retain) Possession *possession;

@end
