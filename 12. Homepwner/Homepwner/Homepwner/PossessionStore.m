#import "PossessionStore.h"
#import "Possession.h"

static PossessionStore *defaultStore = nil;

@implementation PossessionStore

+ (PossessionStore *)defaultStore
{
    if (!defaultStore) {
        // Create the singleton
        defaultStore = [[super allocWithZone:NULL] init];
    }
    return defaultStore;
}

// Prevent creation of additional instances
+ (id)allocWithZone:(NSZone *)zone
{
    return [self defaultStore];
}

- (id)init
{
    // If we already have an instance of PossessionStore...
    if (defaultStore) {
        
        // Return the old one
        return defaultStore;
    }
    
    self = [super init];
    if (self) {
        allPossessions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (id)retain
{
    // Do nothing
    return self;
}

- (void)release
{
    // Do nothing
}

- (NSUInteger)retainCount
{
    return NSUIntegerMax;
}

- (NSArray *)allPossessions
{
    return allPossessions;
}

- (Possession *)createPossession
{
    Possession *p = [Possession randomPossession];
    
    [allPossessions addObject:p];
    
    return p;
}

- (void)removePossession:(Possession *)p
{
    [allPossessions removeObjectIdenticalTo:p];
}

- (void)movePossessionAtIndex:(int)from
                      toIndex:(int)to
{
    if (from == to) {
        return;
    }
    // Get pointer to object being moved
    Possession *p = [allPossessions objectAtIndex:from];
    
    // Retain it... (retain count of p = 2)
    [p retain];
    
    // Remove p from array, it is automatically sent release (retain count of p = 1)
    [allPossessions removeObjectAtIndex:from];
    
    // Insert p in array at new location, retained by array (retain count of p = 2)
    [allPossessions insertObject:p atIndex:to];
    
    // Release p (retain count = 1, only owner is now array)
    [p release];
}

@end
