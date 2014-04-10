//
//  ViewController.m
//  NewTest
//
//  Created by Pimpat on 4/9/57 BE.
//  Copyright (c) 2557 Pimpat Teopanichkit. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)submitData:(id)sender {
    _myLabel.text = _myTextfield.text;
}
@end
