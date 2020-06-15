//
//  AmazonPaymentService.m
//  Lab10
//
//  Created by Administlator on 2020/06/15.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (bool)canProcessPayment {
    NSInteger num = arc4random_uniform(2);
    return num == 1;
}

- (void)processPaymentAmount:(NSInteger) amount {
    NSLog(@"Amazon processed amount $%ld", (long)amount);
}

@end
