#import "Teacher.h"
#import "Cathedra.h"
#import "Group.h"
#import "ZavKaf.h"
#import "University.h"

int main(int argc, const char * argv[])
{
	Cathedra *SI = [[Cathedra alloc] init];

	NSMutableArray *groups = [[NSMutableArray alloc] init];

	for (int i = 0; i < 5; i++)
	{
		Group *group = [[Group alloc] initWithNumber:1201 + i];

		[groups addObject: group];
		[SI.studentGroups addSubordinate: group];
	}

	for (int i = 0; i < 10; i++)
	{
		Teacher *teacher = [[Teacher alloc] init];

		teacher.degree = docent;

		for (int j = 0; j < 10; j++)
		{
			Student * student = [[Student alloc] init];

			student.mark = arc4random_uniform(4) + 2;
			student.group = [SI.studentGroups.subordinates objectAtIndex:arc4random_uniform(groups.count)];
			[student.group.members addSubordinate:student];

			[teacher.students addSubordinate: student];
		}

		[SI.professors addSubordinate:teacher];
	}

	University *university = [University instance];

	[university.cathedras addSubordinate:SI];

	NSLog(@"%f", university.avgMark);

	return 0;
}

