//
//  MyTableController.h
//  NewTest
//
//  Created by Pimpat on 4/9/57 BE.
//  Copyright (c) 2557 Pimpat Teopanichkit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableController : UITableViewController
@property (strong, nonatomic) IBOutlet UITextField *myTextfield;
- (IBAction)submitData:(id)sender;
@property (strong, nonatomic) IBOutlet UILabel *ticker;
@property (strong, nonatomic) IBOutlet UILabel *nameTicker;
@property (strong, nonatomic) IBOutlet UILabel *price;
@property (strong, nonatomic) IBOutlet UILabel *volume;
@property (weak, nonatomic) IBOutlet UITableViewCell *myCell1;
@property (weak, nonatomic) IBOutlet UITableViewCell *myCell2;

@end
