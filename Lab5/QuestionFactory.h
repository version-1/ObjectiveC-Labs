//
//  QuestionFactory.h
//  Lab5
//
//  Created by Administlator on 2020/06/11.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
NS_ASSUME_NONNULL_BEGIN

@interface QuestionFactory : NSObject
+ (Question*) createInstance;
@end

NS_ASSUME_NONNULL_END
