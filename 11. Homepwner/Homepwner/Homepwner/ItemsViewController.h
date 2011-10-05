#import <Foundation/Foundation.h>


@interface ItemsViewController : UITableViewController
{
    IBOutlet UIView *headerView;
}

- (UIView *)headerView;
- (IBAction)addNewPossession:(id)sender;
- (IBAction)toggleEditingMode:(id)sender;

@end
