//
//  main.m
//  Lab6
//
//  Created by Administlator on 2020/06/17.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h";

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSMutableArray *dices = [[NSMutableArray alloc] init];
        for (NSInteger i = 0; i < 5; i++) {
            Dice *dice = [[Dice alloc] init];
            NSLog(@"%@ %d", [dice getValue], dice.value);
            [dices addObject:dice];
        }
        
    }
    return 0;
}
