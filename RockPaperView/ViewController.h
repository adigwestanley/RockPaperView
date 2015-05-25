//
//  ViewController.h
//  RockPaperView
//
//  Created by STANLEY on 2015-01-20.
//  Copyright (c) 2015 STANLEY. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <stdlib.h> //used for random"

NSInteger CompChoice;
NSInteger UserChoice;
NSInteger result;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *User_Choice;
@property (weak, nonatomic) IBOutlet UILabel *Comp_Choice;
@property (weak, nonatomic) IBOutlet UILabel *Output;


- (IBAction)RockClicked:(id)sender;
- (IBAction)PaperClicked:(id)sender;
- (IBAction)ScissorsClicked:(id)sender;


- (IBAction)itemClicked:(id)sender;

@end

