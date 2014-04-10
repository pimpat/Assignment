//
//  MyTableController.m
//  NewTest
//
//  Created by Pimpat on 4/9/57 BE.
//  Copyright (c) 2557 Pimpat Teopanichkit. All rights reserved.
//

#import "MyTableController.h"

@interface MyTableController ()

@end

@implementation MyTableController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _myCell1.backgroundColor = [UIColor colorWithRed:247.0f/255.0f green:146.0f/255.0f blue:200.0f/255.0f alpha:1.0f];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
 
    // Configure the cell...
    cell.textLabel.text=_myTextfield.text;
    cell.detailTextLabel.text=@"1234";
    return cell;
}
*/
- (IBAction)submitData:(id)sender {
    //-------get (.csv)data
    NSString *absoluteURL = [[@"http://download.finance.yahoo.com/d/quotes.csv?s=" stringByAppendingString: _myTextfield.text]stringByAppendingString: @"&f=snl1c1p2v&e=.csv"];
    NSURL *url = [NSURL URLWithString:absoluteURL];
    NSString *fileString = [[NSString alloc] initWithContentsOfURL:url];
    NSCharacterSet *doNotWant = [NSCharacterSet characterSetWithCharactersInString:@"\""];
    fileString = [[fileString componentsSeparatedByCharactersInSet: doNotWant] componentsJoinedByString: @""];
    
    //NSLog(fileString);
    
    //-------put data to array and display data
    NSArray *contentArray = [fileString componentsSeparatedByString:@","];
    _ticker.text=[contentArray objectAtIndex:0];
    _nameTicker.text=[contentArray objectAtIndex:1];
    _price.text=[[[contentArray objectAtIndex:3] stringByAppendingString: @"\t\t\t"] stringByAppendingString: [contentArray objectAtIndex:4]];
    _volume.text=[contentArray objectAtIndex:5];
    
    //-------check sign of changing
    NSString *asign = [[contentArray objectAtIndex:4] substringToIndex:1];
    
    if([asign isEqualToString: @"-"]) _myCell2.backgroundColor = [UIColor colorWithRed:245.0f/255.0f green:126.0f/255.0f blue:122.0f/255.0f alpha:1.0f];
    else if([asign isEqualToString: @"+"]) _myCell2.backgroundColor = [UIColor colorWithRed:122.0f/255.0f green:129.0f/255.0f blue:253.0f/255.0f alpha:1.0f];
    else _myCell2.backgroundColor = [UIColor grayColor];

}
@end
