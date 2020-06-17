//
//  GameController.h
//  Lab6
//
//  Created by Administlator on 2020/06/17.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject
@property NSInteger resetCount;
@property NSInteger lowestScore;
@property NSMutableArray* dices;

- (void) initHoldIndices;
- (NSInteger) getScore;
- (NSString*) getPrompt;
- (void) roll;
- (Boolean) holdDice: (NSInteger) index;
- (Boolean) unholdDice: (NSInteger) index;
- (Boolean) resetHold;
- (void) restart;
@end

NS_ASSUME_NONNULL_END
