#import "ZavKaf.h"


@implementation ZavKaf

- (NSString *)description
{
	return [NSString stringWithFormat: @"%@%@%@",
					 @"ZavKaf:\n",
					 super.description,
					 _cathedra.description];
}

@end