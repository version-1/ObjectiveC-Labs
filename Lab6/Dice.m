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
        self.isHeld = false;
    }
    return self;
}

- (NSString*) getValue
{
    NSArray *const dices = [[NSArray alloc] initWithObjects: @"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅", nil];
    if (_isHeld) {
        return [NSString stringWithFormat: @" *%d %@", _value + 1, dices[_value]];
    }
    return [NSString stringWithFormat: @" %d %@", _value + 1, dices[_value]];
}

@end
