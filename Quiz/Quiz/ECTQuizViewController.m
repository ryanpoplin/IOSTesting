//
//  ECTQuizViewController.m
//  Quiz
//
//  Created by Byrdann Fox on 6/14/14.
//  Copyright (c) 2014 ExcepApps. All rights reserved.
//

#import "ECTQuizViewController.h"

// @ === directives...

@interface ECTQuizViewController ()

// props...
// add outlets to communicate view objects with the view controller...
// they be pointers...
// outlet props. are pointer vars that need to point to view objects and the view controller...

@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@end

@implementation ECTQuizViewController

// wait for the interface to be loaded...
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        
        self.questions = @[@"IOS Languages?",
                           @"Name of your company?",
                           @"Name of your girlfriend?"];
        
        self.answers = @[@"Swift and Objective-C!",
                         @"ExcepApps!",
                         @"I don't have one..."];
        
    }
    
    return self;
    
}

- (IBAction)showQuestion:(id)sender
{
    
    self.currentQuestionIndex++;
    
    if (self.currentQuestionIndex == [self.questions count]) {
        
            self.currentQuestionIndex = 0;
        
        }
    
        NSString *question = self.questions[self.currentQuestionIndex];
        
        self.questionLabel.text = question;
        
        self.answerLabel.text = @"???";
        
}

- (IBAction)showAnswer:(id)sender
{
    
    NSString *answer = self.answers[self.currentQuestionIndex];
    
    self.answerLabel.text = answer;
    
}

@end
