//
//  Kitchen.h
//  Lab11
//
//  Created by Administlator on 2020/06/19.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "KitchenDelegate.h"


@interface Kitchen : NSObject

@property (strong) id delegate;
- (Pizza*) makePizzaWithSize: (PizzaSize) size :(NSArray *)toppings;
@end
