#import <Foundation/Foundation.h>

@class Possession;

@interface PossessionStore : NSObject
{
    NSMutableArray *allPossessions;
}

// Notice that this is a class method, and is prefixed with a + instead of a -
+ (PossessionStore *)defaultStore;

- (NSMutableArray *)allPossessions;
- (Possession *)createPossession;
- (void)removePossession:(Possession *)p;
- (void)movePossessionAtIndex:(int)from
                      toIndex:(int)to;
@end
