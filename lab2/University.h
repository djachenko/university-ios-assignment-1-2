#import <Foundation/Foundation.h>
#import "AvgMarkable.h"
#import "Subordinator.h"


@interface University : NSObject<AvgMarkable>
@property (nonatomic, readonly) Subordinator *cathedras;
+ (University *)instance;
@end