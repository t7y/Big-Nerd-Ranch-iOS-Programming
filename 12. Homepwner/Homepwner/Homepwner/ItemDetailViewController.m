//
//  ItemDetailViewController.m
//  Homepwner
//
//  Created by Jerry Tian on 10/5/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ItemDetailViewController.h"
#import "Possession.h"

@implementation ItemDetailViewController
@synthesize nameField;
@synthesize serialNumberField;
@synthesize valueField;
@synthesize dateLabel;
@synthesize possession;

- (void)dealloc {
    [possession release];
    [nameField release];
    [serialNumberField release];
    [valueField release];
    [dateLabel release];
    
    [super dealloc];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    
    [nameField release];
    nameField = nil;
    
    [serialNumberField release];
    serialNumberField = nil;
    
    [valueField release];
    valueField = nil;
    
    [dateLabel release];
    dateLabel = nil;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [[self view] setBackgroundColor:[UIColor groupTableViewBackgroundColor]];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [nameField setText:[possession possessionName]];
    [serialNumberField setText:[possession serialNumber]];
    [valueField setText:[NSString stringWithFormat:@"%d",
                         [possession valueInDollars]]];
    // Create a NSDateFormatter that will turn a date into a simple date string
    NSDateFormatter *dateFormatter = [[[NSDateFormatter alloc] init]
                                      autorelease];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
    // Use filtered NSDate object to set dateLabel contents
    [dateLabel setText:
     [dateFormatter stringFromDate:[possession dateCreated]]];
    // Change the navigation item to display name of possession
    [[self navigationItem] setTitle:[possession possessionName]];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    // Clear first responder
    [[self view] endEditing:YES];
    // "Save" changes to possession
    [possession setPossessionName:[nameField text]];
    [possession setSerialNumber:[serialNumberField text]];
    [possession setValueInDollars:[[valueField text] intValue]];
}

@end
