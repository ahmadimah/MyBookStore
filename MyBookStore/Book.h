//
//  Book.h
//  MyBookStore
//
//  Created by Saba Samet on 12-08-04.
//  Copyright (c) 2012 Saba Samet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject {
}

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *author;
@property (strong, nonatomic) NSString *description;
@property (nonatomic) NSUInteger price;
@property (strong, nonatomic) NSString *isbn;

@end
// add my comment