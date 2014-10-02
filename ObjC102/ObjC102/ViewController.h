//
//  ViewController.h
//  ObjC102
//
//  Created by Tyten Teegarden on 9/25/14.
//  Copyright (c) 2014 Tyten LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

// Define a property
@property (nonatomic, strong) NSString *goodbyeString;

// Custom Setter
- (void)setGreetingString: (NSString *) inString;

// Custom Getter
- (NSString *)greetingString;

- (void)nameOfYourFunction;

@end

