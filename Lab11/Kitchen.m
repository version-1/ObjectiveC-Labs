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
    if (![_delegate kitchen: self shouldMakePizzaOfSize:size addToppings:toppings]) {
        return nil;
    }
    PizzaSize *_size = size;
    if ([_delegate shouldUpgradeOrder:self ]) {
        _size = Large;
    }
    
    Pizza *pizza = [[Pizza alloc] initWithSize: _size];
    NSMutableArray *list = [NSMutableArray new];
    for (id name in toppings) {
        Topping *topping = [[Topping alloc] initWithName:name];
        if (topping != nil) {
          [list addObject:topping];
        }
    }
    [pizza setToppings: list];
    
    if( [_delegate respondsToSelector:@selector(kitchenDidMakePizza)] ) {
        [_delegate kitchenDidMakePizza: pizza];
    }
    return pizza;
}

@end
