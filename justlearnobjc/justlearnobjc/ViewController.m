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
    float weightInKilograms = 217.934016;
    float BMI;
    BMI = weightInKilograms / (heightInMeters * heightInMeters);
    NSLog(@"%f", BMI);
    if (BMI < 18.5) {
        NSLog(@"You are underweight!...");
    } else if (BMI >= 18.5 && BMI <= 24.9) {
        NSLog(@"You are normal!...");
    } else if (BMI >= 25 && BMI <= 29.9) {
        NSLog(@"You are overweight!...");
    } else {
        NSLog(@"You are obese!...");
    }
    
    int level = 0;
    
    switch (level) {
            
        case 0:
            NSLog(@"It's 0!");
            break;
            
        case 1:
            NSLog(@"It's 1");
            break;
            
        default:
            NSLog(@"Da fuck happened?");
            break;
            
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
