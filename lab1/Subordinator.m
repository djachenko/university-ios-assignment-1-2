#import "Subordinator.h"

@interface Subordinator()
@property (nonatomic, strong) NSMutableArray *internalSubordinates;
@end

@implementation Subordinator

@synthesize internalSubordinates = _internalSubordinates;
@dynamic subordinates;

- (id)init
{
	return self;
}

- (void)addSubordinate:(NSObject *)subordinate
{
	[_internalSubordinates addObject:subordinate];
}

- (NSString *)description
{
	NSString *temp = [[NSString alloc] init];

	for (int i = 0; i < self.subordinates.count; ++i)
	{
		temp = [temp stringByAppendingString:[[self.subordinates objectAtIndex:i] description]];
	}

	return temp;
}

- (NSArray *)subordinates
{
	return _internalSubordinates;
}

@end