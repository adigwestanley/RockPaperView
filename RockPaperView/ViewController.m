//
//  ViewController.m
//  RockPaperView
//
//  Created by STANLEY on 2015-01-20.
//  Copyright (c) 2015 STANLEY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    }

- (IBAction)RockClicked:(id)sender
{
    _User_Choice.text = @"Rock";
    UserChoice = 0;
    [self generateCompChoice];
    [self generateWinner];
}

- (IBAction)PaperClicked:(id)sender
{
    _User_Choice.text = @"Paper";
    UserChoice = 1;
    [self generateCompChoice];
    [self generateWinner];
}

- (IBAction)ScissorsClicked:(id)sender
{
    _User_Choice.text = @"Scissors";
    UserChoice = 2;
    [self generateCompChoice];
    [self generateWinner];
}

- (IBAction)itemClicked:(id)sender
{
    
}

-(void)generateWinner
{
    if (UserChoice == 1 && CompChoice == 0)
        _Output.text = @"YOU WIN";
    else if(UserChoice == 0 && CompChoice == 2)
        _Output.text = @"YOU WIN";
    else if(UserChoice == 2 && CompChoice == 1)
        _Output.text = @"YOU WIN";
    else (_Output.text = @"YOU LOOSE");
    
        
}

-(void)generateCompChoice
{
      CompChoice = arc4random_uniform(3);
    
    switch (CompChoice) {
        case 0:
            _Comp_Choice.text = @"Rock";
            break;
        case 1:
            _Comp_Choice.text = @"Paper";
            break;
        case 2:
            _Comp_Choice.text = @"Scissors";
            break;
        default:
            _Comp_Choice.text = @"Scissors";
            break;
    }
}

@end

