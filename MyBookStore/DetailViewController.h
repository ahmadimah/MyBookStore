//
//  DetailViewController.h
//  MyBookStore
//
//  Created by Saba Samet on 12-08-04.
//  Copyright (c) 2012 Saba Samet. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
