//
//  Person.m
//  LanguageMixing
//
//  Created by Tyten Teegarden on 9/25/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)initWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName andAgeInYears:(NSUInteger)anAgeInYears {
	if (self = [super init]) {
		[self setFirstName:aFirstName];
		[self setLastName:aLastName];
		[self setAgeInYears:anAgeInYears];
	}
	return self;
}

@end
