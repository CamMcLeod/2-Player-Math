//
//  ViewController.m
//  2-Player-Math
//
//  Created by Cameron Mcleod on 2019-06-03.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import "ViewController.h"
#import "Question.h"
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
    // BOOL playOn = YES;
    self.player1Score = [[ScoreKeeper alloc] init];
    self.player2Score = [[ScoreKeeper alloc] init];
    self.myManager = [[QuestionManager alloc] init];
    self.myFactory = [[QuestionFactory alloc] init];
    self.mathAnswerLabel.text = @"";
    self.player1Score.playerNumber = 1;
    self.player2Score.playerNumber = 2;
                                
    
    
    // initialize question which generates numbers and operation, and add it to questions array,
    
    self.mathQuestion = [self.myFactory generateRandomQuestion];
    [self.myManager.questions addObject: self.mathQuestion];
    //ask question
    self.mathQuestionLabel.text = [NSString stringWithFormat: @"Player 1: %@", self.mathQuestion.question];
    

        // if they typed in quit, exit the game
//        if([trimmedQuitString compare: @"quit"] == NSOrderedSame) {
//            playOn = NO;
//        }
    
}


- (IBAction)tappedKeypad1Button:(UIButton *)sender {
    
    self.mathAnswerLabel.text = [self.mathAnswerLabel.text stringByAppendingString: self.keypad1Button.titleLabel.text];
}

- (IBAction)tappedKeypad2Button:(UIButton *)sender {
    
    self.mathAnswerLabel.text = [self.mathAnswerLabel.text stringByAppendingString: self.keypad2Button.titleLabel.text];
    
}

- (IBAction)tappedKeypad3Button:(UIButton *)sender {
    
    self.mathAnswerLabel.text = [self.mathAnswerLabel.text stringByAppendingString: self.keypad3Button.titleLabel.text];
    
}

- (IBAction)tappedKeypad4Button:(UIButton *)sender {
    
    self.mathAnswerLabel.text = [self.mathAnswerLabel.text stringByAppendingString: self.keypad4Button.titleLabel.text];
    
}

- (IBAction)tappedKeypad5Button:(UIButton *)sender {
    
    self.mathAnswerLabel.text = [self.mathAnswerLabel.text stringByAppendingString: self.keypad5Button.titleLabel.text];
    
}

- (IBAction)tappedKeypad6Button:(UIButton *)sender {
    
    self.mathAnswerLabel.text = [self.mathAnswerLabel.text stringByAppendingString: self.keypad6Button.titleLabel.text];
    
}

- (IBAction)tappedKeypad7Button:(UIButton *)sender {
    
    self.mathAnswerLabel.text = [self.mathAnswerLabel.text stringByAppendingString: self.keypad7Button.titleLabel.text];
    
}

- (IBAction)tappedKeypad8Button:(UIButton *)sender {
    
    self.mathAnswerLabel.text = [self.mathAnswerLabel.text stringByAppendingString: self.keypad8Button.titleLabel.text];
    
}

- (IBAction)tappedKeypad9Button:(UIButton *)sender {
    
    self.mathAnswerLabel.text = [self.mathAnswerLabel.text stringByAppendingString: self.keypad9Button.titleLabel.text];
    
}

- (IBAction)tappedKeypad0Button:(UIButton *)sender {
    
    self.mathAnswerLabel.text = [self.mathAnswerLabel.text stringByAppendingString: self.keypad0Button.titleLabel.text];
    
}

- (IBAction)tappedKeypadEnterButton:(UIButton *)sender {
    
    if ( (self.player1Score.wrong < 3) && (self.player2Score.wrong < 3)) {
        if (self.myManager.activePlayer == 1) {
            if ([self.mathAnswerLabel.text intValue] == self.mathQuestion.answer) {
                NSLog(@"Right!");
                self.player1Score.right++;
                self.player1ScoreLabel.text = [NSString stringWithFormat:@"%u", self.player1Score.right];
                
                
            } else {
                NSLog(@"Wrong! The right answer is: %ld", self.mathQuestion.answer);
                self.player1Score.wrong++;
                
                
            }
            self.myManager.activePlayer = 2;
            self.mathQuestion = [self.myFactory generateRandomQuestion];
            [self.myManager.questions addObject: self.mathQuestion];
            //ask question
            self.mathQuestionLabel.text = [NSString stringWithFormat: @"Player 2: %@", self.mathQuestion.question];
            
        }
        else if (self.myManager.activePlayer == 2) {
            if ([self.mathAnswerLabel.text intValue] == self.mathQuestion.answer) {
                NSLog(@"Right!");
                self.player2Score.right++;
                self.player2ScoreLabel.text = [NSString stringWithFormat:@"%u", self.player2Score.right];
                
                
            } else {
                NSLog(@"Wrong! The right answer is: %ld", self.mathQuestion.answer);
                self.player2Score.wrong++;
                
                
            }
            self.myManager.activePlayer = 1;
            self.mathQuestion = [self.myFactory generateRandomQuestion];
            [self.myManager.questions addObject: self.mathQuestion];
            //ask question
            self.mathQuestionLabel.text = [NSString stringWithFormat: @"Player 1: %@", self.mathQuestion.question];
        }
        self.mathAnswerLabel.text = @"";
    }
    else {
        if (self.player1Score.wrong > self.player2Score.wrong) {
            self.mathAnswerLabel.text = @"Player 2 Wins!";
        }
        else {
            self.mathAnswerLabel.text = @"Player 1 Wins!";
        }
    }
}
@end
