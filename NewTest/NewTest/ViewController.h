//
//  ViewController.h
//  NewTest
//
//  Created by Pimpat on 4/9/57 BE.
//  Copyright (c) 2557 Pimpat Teopanichkit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *myTextfield;
@property (strong, nonatomic) IBOutlet UILabel *myLabel;
- (IBAction)submitData:(id)sender;

@end
