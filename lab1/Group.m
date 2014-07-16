#import "Group.h"
#import "Subordinator.h"
#import "Student.h"


@implementation Group

- (id)initWithNumber:(int)number
{
	_number = number;
	_members = [[Subordinator alloc] init];

	return self;
}

- (NSString *)description
{
	return  [NSString stringWithFormat: @"%@%i%@%@",
					  @"Group:\n",
					  _number,
					  @"\nStudents:\n",
					  _members.description];
}

- (float)avgMark
{
	float sum = 0;

	for (Student *student in self.members.subordinates)
	{
		sum += student.avgMark;
	}

	return sum / self.members.subordinates.count;
}

@end