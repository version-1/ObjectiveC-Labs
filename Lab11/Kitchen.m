//
//  Kitchen.m
//  Lab11
//
//  Created by Administlator on 2020/06/19.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"
#import "Topping.h"
@implementation Kitchen
- (Pizza*) makePizzaWithSize:(PizzaSize)size :(NSArray *)toppings {
    Pizza *pizza = [[Pizza alloc] initWithSize: size];
    NSMutableArray *list = [NSMutableArray new];
    for (id name in toppings) {
        Topping *topping = [[Topping alloc] initWithName:name];
        if (topping != nil) {
          [list addObject:topping];
        }
    }
    [pizza setToppings: list];
    return pizza;
}

@end
