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

/* DECLARE THAT SHIT IN MEMORY! */
/* CONNECT THAT SHIT VIA OUTLETS, ACTIONS AND TARGETS... */

// props...
// add outlets to communicate view objects with the view controller...
// they be pointers...
// outlet props. are pointer vars that need to point to view objects and the view controller...

// Props. for the first set of label objects...
@property (nonatomic, weak) IBOutlet UILabel *questionLabel;
@property (nonatomic, weak) IBOutlet UILabel *answerLabel;
// Actions for the first set up of button objects...
- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;
// Props. for the second set of label objects (Testing)...
@property (nonatomic, weak) IBOutlet UILabel *secondQuestionLabel;
@property (nonatomic, weak) IBOutlet UILabel *secondAnswerLabel;
// Actions for th second set of label objects (testing)...
- (IBAction)secondShowQuestion:(id)sender;
- (IBAction)secondshowAnswer:(id)sender;

@property (nonatomic) int currentQuestionIndex;

@property (nonatomic, copy) NSArray *questions;
@property (nonatomic, copy) NSArray *answers;

@property (nonatomic) int secondCurrentQuestionIndex;

@property (nonatomic, copy) NSArray *secondQuestions;
@property (nonatomic, copy) NSArray *secondAnswers;

@end

@implementation ECTQuizViewController

// wait for the interface to be loaded...
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
    if (self) {
        
        self.questions = @[@"IOS Languages?",
                           @"Name of your company?",
                           @"Name of your Girlfriend?"];
        
        self.answers = @[@"Swift and Objective-C!",
                         @"ExcepApps!",
                         @"I don't have one..."];
        
        self.secondQuestions = @[@"Favorite Song?",
                                 @"Favorite Beer?",
                                 @"Favorite Company?"];
        
        self.secondAnswers = @[@"Bittersweet...",
                               @"Duck Rabbit Milk Stout...",
                               @"The Iron Yard..."];
        
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

- (IBAction)secondShowQuestion:(id)sender
{
    
    self.secondCurrentQuestionIndex++;
    
    if (self.secondCurrentQuestionIndex == [self.secondQuestions count]) {
        
        self.secondCurrentQuestionIndex = 0;
        
    }
    
    NSString *secondQuestion = self.secondQuestions[self.secondCurrentQuestionIndex];
    
    self.secondQuestionLabel.text = secondQuestion;
    
    self.secondAnswerLabel.text = @"???";

}

- (IBAction)secondshowAnswer:(id)sender
{
    
    NSString *secondAnswer = self.secondAnswers[self.secondCurrentQuestionIndex];
    
    self.secondAnswerLabel.text = secondAnswer;
    
}

@end
