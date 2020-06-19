//
//  KitchenDelegate.h
//  Lab11
//
//  Created by Administlator on 2020/06/19.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
@class Kitchen;

NS_ASSUME_NONNULL_BEGIN

@protocol KitchenDelegate <NSObject>
@required
- (BOOL) kitchen: (Kitchen*) kitchen shouldMakePizzaOfSize:(PizzaSize)size addToppings: (NSArray*) toppings;
- (BOOL) shouldUpgradeOrder:  (Kitchen *) kitchen;
@optional
- (void) kitchenDidMakePizza: (Pizza *) pizza;
@end


NS_ASSUME_NONNULL_END
