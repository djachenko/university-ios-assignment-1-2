#import <Foundation/Foundation.h>
#import "Subordinator.h"

@interface Group : NSObject
@property (nonatomic, readonly) Subordinator *members;
@property (nonatomic, readonly) int number;

- (instancetype)initWithNumber:(int)number;
@end