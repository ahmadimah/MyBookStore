//
//  MasterViewController.h
//  MyBookStore
//
//  Created by Saba Samet on 12-08-04.
//  Copyright (c) 2012 Saba Samet. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
