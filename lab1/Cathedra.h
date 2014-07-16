#import <Foundation/Foundation.h>


#import "Subordinator.h"

@interface Cathedra : NSObject

@property (nonatomic, strong, readonly) Subordinator *professors;

@property (nonatomic, strong, readonly) Subordinator *studentGroups;
@property (nonatomic, copy) NSString *name;

@end