//
//  Topping.h
//  Lab11
//
//  Created by Administlator on 2020/06/19.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Topping : NSObject
@property NSString* name;
- (instancetype) initWithName: (NSString*) string;
@end

NS_ASSUME_NONNULL_END
