//
// Created by Admin on 15/07/14.
// Copyright (c) 2014 Horns and hooves. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"

@interface Subordinator : NSObject

@property(readonly) NSMutableArray *subordinates;

- (void)addSubordinate:(NSObject *) subordinate;

@end