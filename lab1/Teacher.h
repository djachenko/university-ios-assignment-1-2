	#import <Foundation/Foundation.h>

#import "Student.h"
#import "Human.h"

@interface Teacher : Human

typedef NS_ENUM(int, Degree)
{
	assistant,
	teacher,
	docent,
	professor
};

@property (nonatomic, strong, readonly) Subordinator *students;
@property (nonatomic) Degree degree;

@end
