//
//  SecondManager.m
//  Lab11
//
//  Created by Administlator on 2020/06/19.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "SecondManager.h"

@implementation SecondManager

- (BOOL)kitchen:(nonnull Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size addToppings:(nonnull NSArray *)toppings {
    return true;
}

- (BOOL)shouldUpgradeOrder:(nonnull Kitchen *)kitchen {
    return true;
}

- (void)kitchenDidMakePizza:(nonnull Pizza *)pizza {
    NSLog(@"Thank you!!");
}
@end
