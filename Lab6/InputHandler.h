//
//  InputHandler.h
//  Lab5
//
//  Created by Administlator on 2020/06/11.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputHandler : NSObject
+ (NSString*) getUserInput: (int) maxLength: (NSString*) prompt;
@end

NS_ASSUME_NONNULL_END
