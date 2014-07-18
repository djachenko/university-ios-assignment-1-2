#import <Foundation/Foundation.h>
#import "Human.h"
#import "Subordinator.h"
#import "AvgMarkable.h"

@class Group;

@interface Student : Human<AvgMarkable>

@property (nonatomic) int mark;
@property (nonatomic, weak) Group *group;

@end
