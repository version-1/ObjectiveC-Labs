//
//  main.m
//  Lab11
//
//  Created by Administlator on 2020/06/19.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "Kitchen.h"
#import "Manager.h"
#import "SecondManager.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *kitchen = [Kitchen new];
        Manager *first = [Manager new];
        SecondManager *second = [SecondManager new];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            PizzaSize *size;
            NSString *word = commandWords[0];
            if ([word isEqualToString: @"small"]) {
                size = Small;
            }
            if ([word isEqualToString: @"medium"]) {
                size = Medium;
            }
            if ([word isEqualToString: @"large"]) {
                size = Large;
            }
            
            kitchen.delegate = first;
            Pizza *pizza = [kitchen makePizzaWithSize:size :[commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] - 1)]];
            if (pizza != nil) {
              NSLog([pizza toString]);
            }
            
            kitchen.delegate = second;
            pizza = [kitchen makePizzaWithSize:size :[commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] - 1)]];
            if (pizza != nil) {
              NSLog([pizza toString]);
            }
            // And then send some message to the kitchen...
        }

    }
    return 0;
}
