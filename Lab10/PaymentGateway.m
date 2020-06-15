//
//  PaymentGateway.m
//  Lab10
//
//  Created by Administlator on 2020/06/15.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway
- (void) processPaymentAmount: (NSInteger) amount {
    if ([self.paymentDelegate canProcessPayment]) {
        [self.paymentDelegate processPaymentAmount :amount];
    } else {
        NSLog(@"Sorry. The service is not available");
    }
}
@end

