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
        _lowestScore = -1;
        _dices = [[NSMutableArray alloc] init];
        for (NSInteger i = 0; i < 5; i++) {
            Dice *dice = [[Dice alloc] init];
            [_dices addObject:dice];
        }
        [self roll];
    }
    return self;
}

- (NSString*) getPrompt {
    NSString *dices = [self renderDices];
    NSInteger score = [self getScore];
    NSString  *lowestScoreStr = _lowestScore >= 0 ? [NSString stringWithFormat: @" Lowest score: %d\n", _lowestScore] : @"" ;
    return [NSString stringWithFormat: @"\n 1. Roll\n 2. Hold\n 3. Unhold \n 4. Reset Hold \n 5. New Game \n 9. Quit\n\n Score: %d\n%@ Reset: %d \n Dices: %@\n\n input menu number -->", (long)score, lowestScoreStr, _resetCount, dices];
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
        Dice *prev = [_dices objectAtIndex: i];
        if (!prev.isHeld) {
            Dice *dice = [[Dice alloc] init];
            [_dices setObject:dice atIndexedSubscript: i];
        }
    }
}

- (Boolean) holdDice: (NSInteger) index {
    if (index > 6 || index < 1) {
        return false;
    }
    Dice *dice = [_dices objectAtIndex: index - 1];
    dice.isHeld = true;
    return true;
}

- (Boolean) unholdDice: (NSInteger) index {
    if (index > 6 || index < 1) {
        return false;
    }
    Dice *dice = [_dices objectAtIndex: index - 1];
    dice.isHeld = false;
    return true;
}


- (Boolean) resetHold {
    if (_resetCount >= 5) {
        return false;
    }
    for (NSInteger i = 0; i < 5; i++) {
        Dice *dice = [_dices objectAtIndex: i];
        dice.isHeld = false;
    }
    _resetCount++;
    return true;
}

- (void) restart {
    NSInteger score = [[NSNumber numberWithInt: [self getScore]] integerValue];
    if (_lowestScore == -1 || _lowestScore > score) {
        _lowestScore = score;
    }
    _resetCount = 0;
    [self resetHold];
    [self roll];
}



@end
