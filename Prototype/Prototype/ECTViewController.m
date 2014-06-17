//
//  ECTViewController.m
//  Prototype
//
//  Created by Byrdann Fox on 6/17/14.
//  Copyright (c) 2014 ExcepApps. All rights reserved.
//

#import "ECTViewController.h"

@interface ECTViewController ()

@end

@implementation ECTViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/* VIEW DID LOAD... */
/* METHOD */

- (void)viewDidLoad

{
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // * === a pointer to an object in memory...
    NSString *testString = @"Objective-C";
    // self: refers to the custom view controller class...
    
    // testLabel: refers to the prop. defined in the class...
    
    // text: refers to a prop. of the UILabel class...
    
    // The view object needs to be aware (outlet) of the prop 'testLabel'...
    
    self.testLabel.text = [testString stringByReplacingOccurrencesOfString:@"Objective-C" withString:@"Objective-C and Swift are IOS Langs..."];
    
    // self.testLabel.text = [testString stringByAppendingString:@" are rough..."];
    
    // testString...it's an instance of a class and you send instance messages to it...

    NSUInteger stringLength = [testString length];
    NSLog(@"%lu", (unsigned long)stringLength);
    
    BOOL isStringEqual = [testString isEqualToString:@"Object-C"];
    
    NSLog(@"%s", isStringEqual ? "true" : "false");
    
    NSURL *testURL = [NSURL URLWithString:@"http://www.theironyard.com"];
    
    NSLog(@"%@", testURL);
    
    NSString *testStringPointer = @"JUST SOME STRINGAGE...";
    NSUInteger aIntVal = [testStringPointer length];
    
    NSLog(@"%d", aIntVal);
    
    // * a ref/pointer to an object in genereal...
    // Remember the difference between Class and Instance method invocation...
    // allocation of an object in memory...
    // it also sets all of the instance ivars to nil or zero...
    
    // programmatically create some UIView objects...
    
    // Custom initializers...
    UITextField *textFieldFirstName = [[UITextField alloc] init];
    
    UITextField *textFieldLastName = [[UITextField alloc] init];
    
    textFieldFirstName.placeholder = @"First Name";
    
    textFieldLastName.placeholder = @"Last Name";
    
    // Objective-C functions...
    
    // The frame prop. will allow you to make code that appears on the design surface...
    
    // x === how far it's from the left....
    // y === how far it's from the top...
    textFieldFirstName.frame = CGRectMake(20, 100, 280, 31);
    // a constant along with some enumeration...
    textFieldFirstName.borderStyle = UITextBorderStyleRoundedRect;
    textFieldLastName.frame = CGRectMake(20, 200, 280, 31);
    textFieldLastName.borderStyle = UITextBorderStyleRoundedRect;
    
    // method calling the objects onto the view object from this view controller...
    [self.view addSubview:textFieldFirstName];
    [self.view addSubview:textFieldLastName];
    
    UILabel *testLabel = [[UILabel alloc] init];
    testLabel.text = @"testLabel...";
    testLabel.frame = CGRectMake(20, 250, 280, 30);
    testLabel.textAlignment = 1;
    [self.view addSubview:testLabel];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
