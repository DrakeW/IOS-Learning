//
//  Card.m
//  CardGame
//
//  Created by Junyu Wang on 2/24/15.
//  Copyright (c) 2015 Junyu Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Card()

@property (nonatomic) NSString *some_private_variable;
@property (strong, nonatomic) NSArray *some_private_array;
@property (nonatomic, getter=isStupid) BOOL *stupid;

@end

@implementation Card

@synthesize chosen = _chosen;
@synthesize contents = _contents;
@synthesize matched = _matched;

- (BOOL) isChosen
{
    return _chosen;
}

- (void) setChosen:(BOOL)chosen
{
    _chosen = chosen;
}

- (NSString*) contents
{
    return _contents;
}

- (void) setContents:(NSString *)contents
{
    _contents = contents;
}

- (BOOL) isMatched
{
    return _matched;
}

- (void) setMatched:(BOOL)matched
{
    _matched = matched;
}


- (void) test
{
    NSString *string = [[NSString alloc] init];
    NSArray *array = [[NSArray alloc] init];
    NSNumber *number = [[NSNumber alloc] init];
    NSDictionary *dic = [[NSDictionary alloc] init];
    
    NSNumber *a = @2;
    NSNumber *b = @3;
    
    NSUInteger aInt = [a unsignedIntegerValue];
    NSUInteger bInt = [b unsignedIntegerValue];
    
    NSUInteger integer = aInt * bInt;
    
    
    
    
    
    NSLog([string stringByAppendingString:array[0]]);
    NSLog(@"%@", string);
    NSLog(@"lol is %@", number);
    NSLog(@"result is @lu", integer);
    
}



- (int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}


@end

