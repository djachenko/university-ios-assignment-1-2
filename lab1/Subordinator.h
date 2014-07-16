#import <Foundation/Foundation.h>
#import "Human.h"

@interface Subordinator : NSObject

@property (nonatomic, copy, readonly) NSArray *subordinates;

- (void)addSubordinate:(NSObject *) subordinate;

@end