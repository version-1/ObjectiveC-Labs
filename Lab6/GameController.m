//
//  GameController.m
//  Lab6
//
//  Created by Administlator on 2020/06/17.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

- (instancetype) init {
    if (self = [super init]) {
        _resetCount = 0;
        _scoreList = [[NSMutableArray alloc] init];
        _dices = [[NSMutableArray alloc] init];
        [self roll];
    }
    return self;
}

- (NSString*) getPrompt {
    NSString *dices = [self renderDices];
    NSInteger score = [self getScore];
    NSString  *lowestScore = [_scoreList count] > 0 ? [NSString stringWithFormat: @"Lowest score: %@\n", [_scoreList objectAtIndex: 0]] : @"";
    return [NSString stringWithFormat: @"\n 1. Roll\n 2. Hold\n 3. Unhold \n 4. New Game \n 5. Quit\n\n Score: %d\n%@ Reset: %d \nDices: %@\n\n input menu number -->", (long)score, lowestScore, _resetCount, dices];
}

- (NSInteger) getScore {
    NSInteger sum = 0;
    for (NSInteger i = 0; i < 5; i++) {
        Dice *dice = [_dices objectAtIndex: i];
        sum += dice.value + 1;
    }
    return sum;
}

- (NSString*) renderDices {
    NSMutableString *str = [[NSMutableString alloc] init];
    for (NSInteger i = 0; i < 5; i++) {
        Dice *dice = [_dices objectAtIndex: i];
        [str appendFormat: @"%@", [dice getValue]];
    }
    return str;
}


- (void) roll {
    for (NSInteger i = 0; i < 5; i++) {
        Dice *dice = [[Dice alloc] init];
        if (!dice.isHeld) {
            [_dices setObject:dice atIndexedSubscript: i];
        }
    }
}

- (void) resetHold {
    if (_resetCount > 5) {
        return;
    }
    for (NSInteger i = 0; i < 5; i++) {
        Dice *dice = [_dices objectAtIndex: i];
        dice.isHeld = false;
    }
    _resetCount++;
}

- (void) restart {
    NSNumber *score = [NSNumber numberWithInt: [self getScore]];
    [_scoreList addObject: score];
    [self resetHold];
    [self roll];
}



@end
