#import "Student.h"
#import "Group.h"

@implementation Student

- (NSString *)description
{
	return [NSString stringWithFormat:@"%@%@%@%i%@%i%c",
									  @"Student:\n",
									  super.description,
									  @"mark: ",
									  _mark,
									  @"\ngroup: ",
									  _group.number,
									  '\n'];
}

- (float)avgMark
{
	return self.mark;
}


@end
