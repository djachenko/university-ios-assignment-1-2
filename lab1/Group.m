//
// Created by Admin on 15/07/14.
// Copyright (c) 2014 Horns and hooves. All rights reserved.
//

#import "Group.h"
#import "Subordinator.h"


@implementation Group

- (id)initWithNumber:(int)number
{
	_number = number;
	_members = [[Subordinator alloc] init];

	return self;
}

- (NSString *)description
{
	return  [NSString stringWithFormat: @"%@%i%@%@",
					  @"Group:\n",
					  _number,
					  @"\nStudents:\n",
					  _members.description];
}

@end