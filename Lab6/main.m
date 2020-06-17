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
            if (answer == nil || [answer isEqualToString: @"5"]) {
                break;
            }
            if (answer == nil || [answer isEqualToString: @"1"]) {
                [game roll];
            }
            if (answer == nil || [answer isEqualToString: @"2"]) {
                break;
            }
            if (answer == nil || [answer isEqualToString: @"3"]) {
                break;
            }
            if (answer == nil || [answer isEqualToString: @"4"]) {
                [game restart];
            }

        }
    }
    return 0;
}
