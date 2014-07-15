#import <Foundation/Foundation.h>

#import "Student.h"
#import "Human.h"

@interface Teacher : Human

@property (readonly) Subordinator *students;
@property NSString * degree;

@end
