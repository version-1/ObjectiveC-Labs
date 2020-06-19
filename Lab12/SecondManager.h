//
//  SecondManager.h
//  Lab11
//
//  Created by Administlator on 2020/06/19.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"
#import "DeliveryService.h"

NS_ASSUME_NONNULL_BEGIN

@interface SecondManager : NSObject<KitchenDelegate>
@property DeliveryService *deliverService;
@end

NS_ASSUME_NONNULL_END
