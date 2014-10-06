//
//  DetailViewController.m
//  MyBookStore
//
//  Created by Saba Samet on 12-08-04.
//  Copyright (c) 2012 Saba Samet. All rights reserved.
//

#import "DetailViewController.h"
#import "Book.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

#pragma mark - Managing the detail item

@synthesize titleLable, authorLable, descriptionTextView, priceLable, isbnLable;

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.

    if (self.detailItem) {
        Book *theBook = (Book *)self.detailItem;
        self.titleLable.text = theBook.title;
        self.authorLable.text = theBook.author;
        self.descriptionTextView.text = theBook.description;
        self.priceLable.text = [NSString stringWithFormat:@"$%d", theBook.price];
        self.isbnLable.text = theBook.isbn;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Selected Book", @"Selected Book");
    }
    return self;
}
							
@end
