//
//  Manager.m
//  Lab11
//
//  Created by Administlator on 2020/06/19.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "Manager.h"
#import "Topping.h"
#import "DeliveryService.h"

@implementation Manager
- (instancetype)init {
    if (self = [super init] ) {
        _deliverService = [DeliveryService new];
    }
    return self;
}
- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size addToppings:(nonnull NSArray *)toppings {
    for (NSString *topping in toppings) {
        if ([topping isEqualToString: @"anchovies"]) {
            return false;
        }
    }
    return true;
}

- (BOOL)shouldUpgradeOrder:(nonnull Kitchen *)kitchen {
    return false;
}

- (void)kitchenDidMakePizza:(nonnull Pizza *)pizza {
    [_deliverService deliverPizza :pizza];
}

@end
