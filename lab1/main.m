#import "Teacher.h"
#import "Cathedra.h"
#import "Group.h"
#import "ZavKaf.h"

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

			student.mark = arc4random_uniform(2) + 2;
			student.group = [SI.studentGroups.subordinates objectAtIndex:arc4random_uniform(groups.count)];
			[student.group.members addSubordinate:student];

			[teacher.students addSubordinate: student];
		}

		[SI.professors addSubordinate:teacher];
	}

	ZavKaf *zavKaf = [[ZavKaf alloc] init];

	zavKaf.cathedra = SI;

	for (int i = 0; i < SI.studentGroups.subordinates.count; ++i)
	{
		Group *group = [SI.studentGroups.subordinates objectAtIndex: i];

		for (int j = 0; j < group.members.subordinates.count; ++j)
		{
			if (0 == arc4random_uniform(20))
			{
				[zavKaf.students addSubordinate:[group.members.subordinates objectAtIndex:j]];
			}
		}
	}

	SI.name = @"SI";

	NSLog(zavKaf.description);

	return 0;
}

