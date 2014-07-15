#import "Cathedra.h"


@implementation Cathedra

- (id)init
{
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

@end