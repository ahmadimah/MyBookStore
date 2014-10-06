//
//  BookStore.m
//  MyBookStore
//
//  Created by Saba Samet on 12-08-04.
//  Copyright (c) 2012 Saba Samet. All rights reserved.
//

#import "BookStore.h"

@implementation BookStore
@synthesize theBookStore;

- (id)init
{
    self = [super init];
    if (self) {
        self.theBookStore = [[NSMutableArray alloc] init];
        Book *newBook = [[Book alloc] init];
        newBook.title = @"Objective-C for Abcolute Beginners";
        newBook.author = @"Bennett, Fisher and Lees";
        newBook.description = @"iOS Programming made easy.";
        newBook.price = 85;
        newBook.isbn = @"123-456-7";
        [self.theBookStore addObject:newBook];
        
        newBook = [[Book alloc] init];
        newBook.title = @"A Farewell To Arms";
        newBook.author = @"Ernest Hemingway";
        newBook.description = @"The story of an affair between an English "
        "nurse and an American soldier "
        "on the Italian front "
        "during World War I.";
        newBook.price = 53;
        newBook.isbn = @"567-231-4";
        [self.theBookStore addObject:newBook];

        newBook = [[Book alloc] init];
        newBook.title = @"Learn To Speak French";
        newBook.author = @"Saba Samet";
        newBook.description = @"How to speak french in Canada.";
        newBook.price = 129;
        newBook.isbn = @"453-212-3";
        [self.theBookStore addObject:newBook];
        
        NSSortDescriptor *mySorter = [[NSSortDescriptor alloc] initWithKey:@"title" ascending:YES];
        [self.theBookStore sortUsingDescriptors:[NSArray arrayWithObject:mySorter]];

        //        [self.theBookStore sortUsingSelector:@selector(price)];
}
    
    return self;
}

- (NSUInteger)count
{
    return theBookStore.count;
}

- (Book *)bookAtIndex:(NSUInteger)index
{
    return [theBookStore objectAtIndex:index];
}

@end
