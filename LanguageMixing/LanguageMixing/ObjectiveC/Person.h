//
//  Person.h
//  LanguageMixing
//
//  Created by Tyten Teegarden on 9/25/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

@property (nonatomic, strong) NSString *firstName;
@property (nonatomic, strong) NSString *lastName;
@property (nonatomic, assign) NSUInteger ageInYears;

- (id)initWithFirstName:(NSString *)aFirstName lastName:(NSString *)aLastName andAgeInYears:(NSUInteger)anAgeInYears;

@end
