//
//  ViewController.h
//  SwissCalculator
//
//  Created by Shiar Ahmed on 1/10/20.
//  Copyright © 2020 Shiar Ahmed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *buttons;
@property (weak, nonatomic) IBOutlet UITextField *firstField;
@property (weak, nonatomic) IBOutlet UILabel *operatorLabel;
@property (weak, nonatomic) IBOutlet UITextField *secondField;
@property (weak, nonatomic) IBOutlet UILabel *gleichLabel;
@property (weak, nonatomic) IBOutlet UITextField *thirdField;
@property (weak, nonatomic) IBOutlet UILabel *darkLabel;
@property (weak, nonatomic) IBOutlet UILabel *infoLabel;
@property (strong, nonatomic) IBOutlet UIView *background;
@property (weak, nonatomic) IBOutlet UISwitch *darkSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *infoSwitch;
@property (weak, nonatomic) IBOutlet UILabel *appNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *byLabel;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *versionLabel;
@property (weak, nonatomic) IBOutlet UILabel *systemLabel;
@property (weak, nonatomic) IBOutlet UIButton *twitter;
@property (weak, nonatomic) IBOutlet UIButton *clearButton;
@property (weak, nonatomic) IBOutlet UIButton *calculateButton;
- (IBAction)twitterLink:(id)sender;
- (IBAction)darkSwitchAction:(id)sender;
- (IBAction)infoSwitchAction:(id)sender;
- (IBAction)buttonsAction:(id)sender;
- (IBAction)applyButton:(id)sender;
- (IBAction)clearButton:(id)sender;
@end
