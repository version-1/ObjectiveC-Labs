//
//  Pizza.m
//  Lab11
//
//  Created by Administlator on 2020/06/19.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "Pizza.h"
#import "Kitchen.h"
#import "Topping.h"
@implementation Pizza
- (instancetype) initWithSize: (PizzaSize) size {
    if (self = [super init]) {
        _size = size;
    }
    return self;
}
- (NSString*) toString {
    NSMutableString *str = [NSMutableString new];
    if (_size == Small) {
        [str appendFormat: @"size: Small \n"];
    }
    if (_size == Medium) {
        [str appendFormat: @"size: Medium \n"];
    }
    
    if (_size == Large) {
        [str appendFormat: @"size: Large \n"];
    }
    
    [str appendString: @"toppings: "];
    for (Topping *topping in _toppings) {
        [str appendFormat: @"%@, ", topping.name];
    }
    return str;
}
@end
