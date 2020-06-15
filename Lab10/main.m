//
//  main.m
//  Lab10
//
//  Created by Administlator on 2020/06/15.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "ApplePaymentService.h"
#import "AmazonPaymentService.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger amount = arc4random_uniform(100 - 10 + 1) + 10;
        NSString *message = [NSString stringWithFormat:@"Thank you for shopping at Acme.com Your total toady is $%ld Please select payment method\n1: Paypal, 2: Stripe, 3: Amazon, 4: Apple", (long)amount];
        NSString* num = [InputHandler getUserInput :10 :message];
        NSArray* services = [[NSArray alloc] initWithObjects: PaypalPaymentService.class, StripePaymentService.class, AmazonPaymentService.class, ApplePaymentService.class, nil];
        Class klass = [services objectAtIndex: [num integerValue] - 1];
        
        PaymentGateway *gw = [[PaymentGateway alloc] init];
        gw.paymentDelegate = [[klass alloc] init];
        
        NSLog(@"input %ld", [num integerValue]);
        [gw processPaymentAmount :amount];
    }
    return 0;
}
