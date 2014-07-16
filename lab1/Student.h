#import <Foundation/Foundation.h>
#import "Human.h"
#import "Subordinator.h"

@class Group;

@interface Student : Human

@property (nonatomic) int mark;
@property (nonatomic, strong) Group *group;

@end
