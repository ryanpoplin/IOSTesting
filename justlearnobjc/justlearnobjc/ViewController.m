//
//  ViewController.m
//  justlearnobjc
//
//  Created by Byrdann Fox on 6/29/14.
//  Copyright (c) 2014 ExcepApps. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
            


@end

@implementation ViewController

- (void)testAlert {
    
    // MODAL ALERT...
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert View..." message:@"ExcepApps..." delegate:nil cancelButtonTitle:@"Ok..." otherButtonTitles:nil, nil];
    
    if (alertView) {
        NSLog(@"A UIAlertView was used...");
        // important...
        NSLog(@"%@", alertView);
    }
    
    [alertView show];
    
    float heightInMeters = 1.8769;
    float weightInKilograms = 117.934016;
    float BMI;
    BMI = weightInKilograms / (heightInMeters * heightInMeters);
    NSLog(@"%f", BMI);
    if (BMI < 18.5) {
        NSLog(@"You are underweight...");
    } else {
        NSLog(@"You are not underweight...");
    }
    
}

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // like 'this' in JS...
    [self testAlert];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
