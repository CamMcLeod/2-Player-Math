//
//  ViewController.m
//  2-Player-Math
//
//  Created by Cameron Mcleod on 2019-06-03.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "ViewController.h"
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // initialize game to continue until quit, score to accumulate, and manager to track questions
    BOOL playOn = YES;
    ScoreKeeper *myScore = [[ScoreKeeper alloc] init];
    QuestionManager *myManager = [[QuestionManager alloc] init];
    QuestionFactory *myFactory = [[QuestionFactory alloc] init];
    
    while(playOn) {
        
        // initialize question which generates numbers and operation, and add it to questions array,
        Question *newQuestion = [myFactory generateRandomQuestion];
        [myManager.questions addObject: newQuestion];
        
        //ask question
        NSLog(@"%@", newQuestion.question);
        
        //handle input with custom class
        NSString *trimmedString = [InputHandler handle];
        
        // tell user if they are correct or incorrect with their answer
        if ([trimmedString integerValue] == newQuestion.answer) {
            NSLog(@"Right!");
            myScore.right++;
            
        } else {
            NSLog(@"Wrong! The right answer is: %ld", newQuestion.answer);
            myScore.wrong++;
            
        }
        
        //print current score and game times
        [myScore score];
        NSLog(@"%@", [myManager timeOutput]);
        
        //ask if user wants to terminate game
        NSLog(@"Type quit to exit:");
        
        //handle input with custom class
        NSString *trimmedQuitString = [InputHandler handle];
        
        // if they typed in quit, exit the game
        if([trimmedQuitString compare: @"quit"] == NSOrderedSame) {
            playOn = NO;
        }
        
    }
}


- (IBAction)tappedKeypad1Button:(UIButton *)sender {
}

- (IBAction)tappedKeypad2Button:(UIButton *)sender {
}

- (IBAction)tappedKeypad3Button:(UIButton *)sender {
}

- (IBAction)tappedKeypad4Button:(UIButton *)sender {
}

- (IBAction)tappedKeypad5Button:(UIButton *)sender {
}

- (IBAction)tappedKeypad6Button:(UIButton *)sender {
}

- (IBAction)tappedKeypad7Button:(UIButton *)sender {
}

- (IBAction)tappedKeypad8Button:(UIButton *)sender {
}

- (IBAction)tappedKeypad9Button:(UIButton *)sender {
}

- (IBAction)tappedKeypad0Button:(UIButton *)sender {
}

- (IBAction)tappedKeypadEnterButton:(UIButton *)sender {
}
@end
