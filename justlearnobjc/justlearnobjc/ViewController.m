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
    
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert View..." message:@"ExcepApps..." delegate:nil cancelButtonTitle:@"Ok..." otherButtonTitles:nil, nil];
    [alertView show];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    [self testAlert];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
