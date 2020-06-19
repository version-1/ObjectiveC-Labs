//
//  DeliveryCar.h
//  Lab12
//
//  Created by Administlator on 2020/06/19.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

NS_ASSUME_NONNULL_BEGIN

@interface DeliveryCar : NSObject
- (void) deliverPizza: (Pizza *) pizza;
@end

NS_ASSUME_NONNULL_END
