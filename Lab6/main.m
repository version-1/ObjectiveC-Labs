//
//  main.m
//  Lab6
//
//  Created by Administlator on 2020/06/17.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    NSLog(@"Threelow!!");
    GameController *game = [[GameController alloc] init];
    @autoreleasepool {
        while (1) {
            NSString *answer = [InputHandler getUserInput :10 :[game getPrompt]];
            if (answer == nil || [answer isEqualToString: @"9"]) {
                break;
            }
            if (answer == nil || [answer isEqualToString: @"1"]) {
                [game roll];
            }
            if (answer == nil || [answer isEqualToString: @"2"]) {
                NSString *answer = [InputHandler getUserInput :10 :@"input hold index -->"];
                if(![game holdDice: [answer integerValue]]) {
                    NSLog(@"\n\n Opps input is invalid \n\n");
                }
            }
            if (answer == nil || [answer isEqualToString: @"3"]) {
                NSString *answer = [InputHandler getUserInput :10 :@"input unhold index -->"];
                if(![game unholdDice: [answer integerValue]]) {
                    NSLog(@"\n\n Opps input is invalid \n\n");
                }
            }
            if (answer == nil || [answer isEqualToString: @"4"]) {
                if(![game resetHold]) {
                    NSLog(@"\n\n Opps!!!!!! excess the reset limit\n\n");
                }
            }
            if (answer == nil || [answer isEqualToString: @"5"]) {
                [game restart];
            }
            
        }
    }
    return 0;
}
