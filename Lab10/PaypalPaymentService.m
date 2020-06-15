//
//  PaypalPaymentService.m
//  Lab10
//
//  Created by Administlator on 2020/06/15.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void)processPaymentAmount:(NSInteger) amount {
    NSLog(@"Paypal processed amount $%ld", (long)amount);
}

- (bool)canProcessPayment {
    NSInteger num = arc4random_uniform(2);
    return num == 1;
}

@end
