#import <Foundation/Foundation.h>


#import "Subordinator.h"
#import "AvgMarkable.h"

@interface Cathedra : NSObject<AvgMarkable>

@property (nonatomic, strong, readonly) Subordinator *professors;

@property (nonatomic, strong, readonly) Subordinator *studentGroups;
@property (nonatomic, copy) NSString *name;

@end