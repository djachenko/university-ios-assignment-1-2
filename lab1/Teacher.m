#import "Teacher.h"

@implementation Teacher

@synthesize students = _students;

- (id)init
{
	self = [super init];

	if (self)
	{
		_students = [[Subordinator alloc] init];
	}

	return self;
}

- (NSString *)description
{
	return [NSString stringWithFormat: @"%@%@%@%d%@%@",
					 @"Teacher:\n",
					 super.description,
					 @"degree: ",
					 _degree,
					 @"\nStudents:\n",
					 _students.description];
}


@end
