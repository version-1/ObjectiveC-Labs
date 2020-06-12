//
//  NSObject+PigLatin.h
//  Lab13
//
//  Created by Administlator on 2020/06/12.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (PigLatin)
- (NSString*) stringByPigLatinization: (NSString*) str;
- (NSString*) pigLatinization: (NSString*) str;
@end

NS_ASSUME_NONNULL_END
