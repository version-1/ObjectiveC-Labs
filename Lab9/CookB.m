//
//  CookB.m
//  Lab9
//
//  Created by Administlator on 2020/06/12.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "CookB.h"

@implementation CookB

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    if ([food  isEqual: @"shortbread"]) {
        return 1.0;
    } else if ([food isEqual: @"bao"]) {
        return 2.5;
    }
    return 0.0;
}

@end
