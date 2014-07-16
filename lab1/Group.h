#import <Foundation/Foundation.h>
#import "Subordinator.h"
#import "AvgMarkable.h"

@interface Group : NSObject<AvgMarkable>
@property (nonatomic, readonly) Subordinator *members;
@property (nonatomic, readonly) int number;

- (instancetype)initWithNumber:(int)number;
@end