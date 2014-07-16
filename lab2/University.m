#import "University.h"
#import "Cathedra.h"


@implementation University

static University *_instance = nil;

- (float)avgMark
{
	float sum = 0;

	for (Cathedra *cathedra in self.cathedras.subordinates)
	{
		sum += cathedra.avgMark;
	}

	return sum;
}

+ (University *)instance
{
	if (_instance == nil)
	{
		@synchronized ([self class])
		{
			if (_instance == nil)
			{
				_instance = [[University alloc] init];
			}
		}
	}

	return _instance;
}


@end