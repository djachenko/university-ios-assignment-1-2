#import <Foundation/Foundation.h>


#import "Subordinator.h"

@interface Cathedra : NSObject

@property (readonly) Subordinator *professors;

@property (readonly) Subordinator *studentGroups;
@property NSString *name;

@end