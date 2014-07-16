#import "Cathedra.h"
#import "Group.h"


@implementation Cathedra

- (instancetype)init
{
	self = [super init];

	_professors = [[Subordinator alloc] init];
	_studentGroups = [[Subordinator alloc] init];

	return self;
}

- (NSString *)description
{
	return [NSString stringWithFormat: @"%@%@%@%@%@%@",
					 @"Cathedra:\nname: ",
					 _name,
					 @"\nProfessors:\n",
					 _professors.description,
					 @"Groups:\n",
					 _studentGroups.description];
}

- (float)avgMark
{
	float sum = 0;

	for (Group *group in self.studentGroups.subordinates)
	{
		sum += group.avgMark;
	}

	return sum;
}


@end