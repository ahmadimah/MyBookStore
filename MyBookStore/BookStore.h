//
//  BookStore.h
//  MyBookStore
//
//  Created by Saba Samet on 12-08-04.
//  Copyright (c) 2012 Saba Samet. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface BookStore : NSObject

@property(strong, nonatomic) NSMutableArray *theBookStore;

- (NSUInteger)count;
- (Book *)bookAtIndex:(NSUInteger)index;

@end
