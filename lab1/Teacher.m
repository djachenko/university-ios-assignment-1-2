//
//  Teacher.m
//  lab1
//
//  Created by Admin on 15/07/14.
//  Copyright (c) 2014 Horns and hooves. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

@synthesize students = _students;

- (id)init
{
	self = [super init];

	_students = [[Subordinator alloc] init];

	return self;
}

- (NSString *)description
{
	return [NSString stringWithFormat: @"%@%@%@%@%@%@",
					 @"Teacher:\n",
					 super.description,
					 @"degree: ",
					 _degree,
					 @"\nStudents:\n",
					 _students.description];
}


@end
