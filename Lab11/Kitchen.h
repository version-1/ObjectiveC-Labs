//
//  Kitchen.h
//  Lab11
//
//  Created by Administlator on 2020/06/19.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@interface Kitchen : NSObject
- (Pizza*) makePizzaWithSize: (PizzaSize) size :(NSArray *)toppings;
@end
