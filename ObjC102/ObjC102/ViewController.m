//
//  ViewController.m
//  ObjC102
//
//  Created by Tyten Teegarden on 9/25/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

static NSString *_greetingString;

- (void)setGreetingString: (NSString *) inString
{
	_greetingString = inString;
}

- (NSString *)greetingString
{
	return _greetingString;
}

- (void)nameOfYourFunction {
	NSLog(@"%@", [self greetingString]);
	NSLog(@"%@", [self goodbyeString]);
}

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//	_greetingString = @"Hello, class!";
	[self setGreetingString:@"Hey, what's up?"];
	[self setGoodbyeString:@"See you later."];
	[self nameOfYourFunction];
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
