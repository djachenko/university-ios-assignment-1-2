//
//  Human.m
//  lab1
//
//  Created by Admin on 15/07/14.
//  Copyright (c) 2014 Horns and hooves. All rights reserved.
//

#import "Human.h"

@implementation Human

- (id)init
{
	_name = @"John";
	_birthDate = [NSDate dateWithTimeIntervalSince1970:arc4random_uniform(25) * 365 * 24 * 60 * 60];

	return self;
}

- (int)age
{
	NSDateComponents * old = [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate: _birthDate];
	NSDateComponents * curr= [[NSCalendar currentCalendar] components:NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear fromDate: [[NSDate alloc] init]];

	long yearDelta = curr.year - old.year;

	long dayDelta = curr.month == old.month ? curr.day - old.day : curr.month - old.month;

	return dayDelta >= 0 ? yearDelta : yearDelta - 1;
}

- (NSString *)description
{
	return [NSString stringWithFormat: @"%@%@%@%i%c",
					 @"Human:\nname: ",
					 _name,
					 @"\nage:\n",
					 [self age],
					 '\n'];
}

@end
