//
//  Pizza.h
//  Lab11
//
//  Created by Administlator on 2020/06/19.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Small,
    Medium,
    Large
} PizzaSize;

@interface Pizza : NSObject
@property (assign) PizzaSize size;
@property NSMutableArray *toppings;
- (instancetype) initWithSize: (PizzaSize) size ;
- (NSString*) toString;
@end

