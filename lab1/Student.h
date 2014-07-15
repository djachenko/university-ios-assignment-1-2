#import <Foundation/Foundation.h>
#import "Human.h"
#import "Subordinator.h"

@class Group;

@interface Student : Human

@property int mark;
@property Group *group;

@end
