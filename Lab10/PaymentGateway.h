//
//  PaymentGateway.h
//  Lab10
//
//  Created by Administlator on 2020/06/15.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PaymentDelegate <NSObject>
@required
-(void) processPaymentAmount: (NSInteger) number;
-(bool) canProcessPayment;
@end

@interface PaymentGateway : NSObject
@property (strong) id paymentDelegate;
- (void) processPaymentAmount: (NSInteger) amount;
@end

NS_ASSUME_NONNULL_END
