//
//  ViewController.m
//  SwissCalculator
//
//  Created by Shiar Ahmed on 1/10/20.
//  Copyright © 2020 Shiar Ahmed. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize buttons;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.background setBackgroundColor: [UIColor colorWithRed:242.0f/255.0f green:242.0f/255.0f blue:247.0/255.0f alpha:1.0f]];
    [self.firstField setBackgroundColor: [UIColor colorWithRed:242.0f/255.0f green:242.0f/255.0f blue:247.0/255.0f alpha:1.0f]];
    [self.secondField setBackgroundColor: [UIColor colorWithRed:242.0f/255.0f green:242.0f/255.0f blue:247.0/255.0f alpha:1.0f]];
    [self.thirdField setBackgroundColor: [UIColor colorWithRed:242.0f/255.0f green:242.0f/255.0f blue:247.0/255.0f alpha:1.0f]];
    [self.firstField setTextColor: [UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0/255.0f alpha:1.0f]];
    [self.secondField setTextColor: [UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0/255.0f alpha:1.0f]];
    [self.thirdField setTextColor: [UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0/255.0f alpha:1.0f]];
    self.nameLabel.text = @"";
    self.systemLabel.text = @"";
    self.versionLabel.text = @"";
    // Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (IBAction)twitterLink:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://twitter.com/shiar_ahmmed"] options:@{} completionHandler:nil];
}

- (IBAction)darkSwitchAction:(id)sender {
    if (self.darkSwitch.isOn) {
        [self darkMode];
    }
    else {
        [self lightMode];
    }
}

- (IBAction)infoSwitchAction:(id)sender {
    if (self.infoSwitch.isOn) {
        [self deviceInfo];
    }
    else {
        [self hideInfo];
    }
}

- (void)deviceInfo {
    NSString *name = [[UIDevice currentDevice] name];
    self.nameLabel.text = [NSString stringWithFormat:@"%@",name];
    NSString *system = [[UIDevice currentDevice] systemName];
    self.versionLabel.text = [NSString stringWithFormat:@"%@",system];
    NSString *version = [[UIDevice currentDevice] systemVersion];
    self.systemLabel.text = [NSString stringWithFormat:@"%@",version];
}

- (void)hideInfo {
    self.nameLabel.text = @"";
    self.versionLabel.text = @"";
    self.systemLabel.text = @"";
}

- (void)darkMode {
    [self.background setBackgroundColor: [UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0f/255.0f alpha:1.0f]];
    [self.firstField setBackgroundColor: [UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0f/255.0f alpha:1.0f]];
    [self.secondField setBackgroundColor: [UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0f/255.0f alpha:1.0f]];
    [self.thirdField setBackgroundColor: [UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0f/255.0f alpha:1.0f]];
    [self.firstField setTextColor: [UIColor colorWithRed:242.0f/255.0f green:242.0f/255.0f blue:247.0f/255.0f alpha:1.0f]];
    [self.secondField setTextColor: [UIColor colorWithRed:242.0f/255.0f green:242.0f/255.0f blue:247.0f/255.0f alpha:1.0f]];
    [self.thirdField setTextColor: [UIColor colorWithRed:242.0f/255.0f green:242.0f/255.0f blue:247.0f/255.0f alpha:1.0f]];
    [self.operatorLabel setTextColor:[UIColor whiteColor]];
    [self.gleichLabel setTextColor:[UIColor whiteColor]];
    [self.darkLabel setTextColor:[UIColor whiteColor]];
    [self.appNameLabel setTextColor:[UIColor whiteColor]];
    [self.byLabel setTextColor:[UIColor whiteColor]];
    [self.firstField setBackgroundColor: [UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0/255.0f alpha:1.0f]];
    [self.secondField setBackgroundColor: [UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0/255.0f alpha:1.0f]];
    [self.thirdField setBackgroundColor: [UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0/255.0f alpha:1.0f]];
    [self.infoLabel setTextColor:[UIColor whiteColor]];
    [self.nameLabel setTextColor:[UIColor whiteColor]];
    [self.versionLabel setTextColor:[UIColor whiteColor]];
    [self.systemLabel setTextColor:[UIColor whiteColor]];
    self.firstField.layer.borderColor = [[UIColor colorWithRed:169.0f/255.0f green:169.0f/255.0f blue:169.0/255.0f alpha:1.0f] CGColor];
    self.firstField.layer.borderWidth = 0.3;
    self.firstField.layer.cornerRadius = 5;
    self.secondField.layer.borderColor = [[UIColor colorWithRed:169.0f/255.0f green:169.0f/255.0f blue:169.0/255.0f alpha:1.0f] CGColor];
    self.secondField.layer.borderWidth = 0.3;
    self.secondField.layer.cornerRadius = 5;
    self.thirdField.layer.borderColor = [[UIColor colorWithRed:169.0f/255.0f green:169.0f/255.0f blue:169.0/255.0f alpha:1.0f] CGColor];
    self.thirdField.layer.borderWidth = 0.3;
    self.thirdField.layer.cornerRadius = 5;
    self.buttons.layer.backgroundColor = [[UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0f/255.0f alpha:1.0f] CGColor];
}

- (void)lightMode {
    [self.background setBackgroundColor: [UIColor colorWithRed:242.0f/255.0f green:242.0f/255.0f blue:247.0/255.0f alpha:1.0f]];
    [self.firstField setBackgroundColor: [UIColor colorWithRed:242.0f/255.0f green:242.0f/255.0f blue:247.0/255.0f alpha:1.0f]];
    [self.secondField setBackgroundColor: [UIColor colorWithRed:242.0f/255.0f green:242.0f/255.0f blue:247.0/255.0f alpha:1.0f]];
    [self.thirdField setBackgroundColor: [UIColor colorWithRed:242.0f/255.0f green:242.0f/255.0f blue:247.0/255.0f alpha:1.0f]];
    [self.firstField setTextColor: [UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0/255.0f alpha:1.0f]];
    [self.secondField setTextColor: [UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0/255.0f alpha:1.0f]];
    [self.thirdField setTextColor: [UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0/255.0f alpha:1.0f]];
    [self.operatorLabel setTextColor:[UIColor blackColor]];
    [self.gleichLabel setTextColor:[UIColor blackColor]];
    [self.darkLabel setTextColor:[UIColor blackColor]];
    [self.appNameLabel setTextColor:[UIColor blackColor]];
    [self.byLabel setTextColor:[UIColor blackColor]];
    [self.infoLabel setTextColor:[UIColor blackColor]];
    [self.nameLabel setTextColor:[UIColor blackColor]];
    [self.versionLabel setTextColor:[UIColor blackColor]];
    [self.systemLabel setTextColor:[UIColor blackColor]];
    self.firstField.layer.borderColor = [[UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0f/169.0f alpha:1.0f] CGColor];
    self.firstField.layer.borderWidth = 0.3;
    self.firstField.layer.cornerRadius = 5;
    self.secondField.layer.borderColor = [[UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0f/255.0f alpha:1.0f] CGColor];
    self.secondField.layer.borderWidth = 0.3;
    self.secondField.layer.cornerRadius = 5;
    self.thirdField.layer.borderColor = [[UIColor colorWithRed:28.0f/255.0f green:28.0f/255.0f blue:30.0f/255.0f alpha:1.0f] CGColor];
    self.thirdField.layer.borderWidth = 0.3;
    self.thirdField.layer.cornerRadius = 5;
    self.buttons.layer.backgroundColor = [[UIColor colorWithRed:242.0f/255.0f green:242.0f/255.0f blue:247.0f/255.0f alpha:1.0f] CGColor];
}

- (IBAction)buttonsAction:(id)sender {
    switch (self.buttons.selectedSegmentIndex) {
    case 0:
        self.operatorLabel.text = @"+";
        break;
    case 1:
        self.operatorLabel.text = @"-";
        break;
    case 2:
        self.operatorLabel.text = @"x";
        break;
    case 3:
        self.operatorLabel.text = @":";
        break;
            
        default:
            break;
    }
}

- (IBAction)applyButton:(id)sender {
    switch (self.buttons.selectedSegmentIndex) {
    case 0:
        [self plus];
        break;
    case 1:
        [self minus];
        break;
    case 2:
        [self multiply];
        break;
    case 3:
        [self divide];
        break;
            
        default:
            break;
    }
}

- (IBAction)clearButton:(id)sender {
    self.firstField.text = @"";
    self.secondField.text = @"";
    self.thirdField.text = @"";
}

- (void)plus {
    float firstTextPlus = [[self.firstField text] floatValue];
    float secondTextPlus = [[self.secondField text] floatValue];
    float resultatPlus = firstTextPlus + secondTextPlus;
    NSString *plusResultat = [NSString stringWithFormat:@"%f", resultatPlus];
    self.thirdField.text = plusResultat;
}

- (void)minus {
    float firstTextMinus = [[self.firstField text] floatValue];
    float secondTextMinus = [[self.secondField text] floatValue];
    float resultatMinus = firstTextMinus - secondTextMinus;
    NSString *minusResultat = [NSString stringWithFormat:@"%f", resultatMinus];
    self.thirdField.text = minusResultat;
}

- (void)multiply {
    float firstTextMulti = [[self.firstField text] floatValue];
    float secondTextMulti = [[self.secondField text] floatValue];
    float resultatMulti = firstTextMulti * secondTextMulti;
    NSString *multiResultat = [NSString stringWithFormat:@"%f", resultatMulti];
    self.thirdField.text = multiResultat;
}

- (void)divide {
    float firstTextDivide = [[self.firstField text] floatValue];
    float secondTextDivide = [[self.secondField text] floatValue];
    float resultatDivide = firstTextDivide / secondTextDivide;
    NSString *divideResultat = [NSString stringWithFormat:@"%f", resultatDivide];
    self.thirdField.text = divideResultat;
}

@end
