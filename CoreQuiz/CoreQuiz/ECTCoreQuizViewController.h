//
//  ECTCoreQuizViewController.h
//  CoreQuiz
//
//  Created by Byrdann Fox on 6/16/14.
//  Copyright (c) 2014 ExcepApps. All rights reserved.
//

#import <UIKit/UIKit.h>

// DONE WITH TUXEDO MODE BABY...

// CLASS OBJECT IMPLEMENTATION FILE...

@interface ECTCoreQuizViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;

- (IBAction)showQuestion:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

- (IBAction)showAnswer:(id)sender;

@end