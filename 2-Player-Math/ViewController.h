//
//  ViewController.h
//  2-Player-Math
//
//  Created by Cameron Mcleod on 2019-06-03.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *Player1ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *Player2ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *mathQuestionLabel;
@property (weak, nonatomic) IBOutlet UILabel *mathAnswerLabel;
@property (weak, nonatomic) IBOutlet UIButton *keypad1Button;
@property (weak, nonatomic) IBOutlet UIButton *keypad2Button;
@property (weak, nonatomic) IBOutlet UIButton *keypad3Button;
@property (weak, nonatomic) IBOutlet UIButton *keypad4Button;
@property (weak, nonatomic) IBOutlet UIButton *keypad5Button;
@property (weak, nonatomic) IBOutlet UIButton *keypad6Button;
@property (weak, nonatomic) IBOutlet UIButton *keypad7Button;
@property (weak, nonatomic) IBOutlet UIButton *keypad8Button;
@property (weak, nonatomic) IBOutlet UIButton *keypad9Button;
@property (weak, nonatomic) IBOutlet UIButton *keypad0Button;
@property (weak, nonatomic) IBOutlet UIButton *keypadEnterButton;

- (IBAction)tappedKeypad1Button:(UIButton *)sender;
- (IBAction)tappedKeypad2Button:(UIButton *)sender;
- (IBAction)tappedKeypad3Button:(UIButton *)sender;
- (IBAction)tappedKeypad4Button:(UIButton *)sender;
- (IBAction)tappedKeypad5Button:(UIButton *)sender;
- (IBAction)tappedKeypad6Button:(UIButton *)sender;
- (IBAction)tappedKeypad7Button:(UIButton *)sender;
- (IBAction)tappedKeypad8Button:(UIButton *)sender;
- (IBAction)tappedKeypad9Button:(UIButton *)sender;
- (IBAction)tappedKeypad0Button:(UIButton *)sender;
- (IBAction)tappedKeypadEnterButton:(UIButton *)sender;



@end

