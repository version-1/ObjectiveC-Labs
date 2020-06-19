//
//  DeliveryService.m
//  Lab12
//
//  Created by Administlator on 2020/06/19.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"

@implementation DeliveryService
- (void) deliverPizza:(Pizza *)pizza {
    DeliveryCar *car = [DeliveryCar new];
    [car deliverPizza: pizza];
}
@end
