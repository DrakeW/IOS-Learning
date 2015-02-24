//
//  Card.h
//  CardGame
//
//  Created by Junyu Wang on 2/24/15.
//  Copyright (c) 2015 Junyu Wang. All rights reserved.
//

#ifndef CardGame_Card_h
#define CardGame_Card_h


#endif

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int)match:(NSArray *)otherCards;

@end