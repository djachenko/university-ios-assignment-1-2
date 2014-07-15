#import "Subordinator.h"

@implementation Subordinator

@synthesize subordinates = _subordinates;

- (id)init
{
	_subordinates = [[NSMutableArray alloc] init];

	return self;
}

- (void)addSubordinate:(NSObject *)subordinate
{
	[_subordinates addObject:subordinate];
}

- (NSString *)description
{
	NSString *temp = [[NSString alloc] init];

	for (int i = 0; i < _subordinates.count; ++i)
	{
		temp = [temp stringByAppendingString:[[_subordinates objectAtIndex:i] description]];
	}

	return temp;
}

@end