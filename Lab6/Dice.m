//
//  Dice.m
//  Lab6
//
//  Created by Administlator on 2020/06/17.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "Dice.h"

@implementation Dice
- (instancetype) init
{
    if (self = [super init]) {
        self.value = arc4random_uniform(6);
    }
    return self;
}

- (NSString*) getValue
{
    NSArray *const dices = [[NSArray alloc] initWithObjects: @"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅", nil];
    return dices[_value];
}

@end
