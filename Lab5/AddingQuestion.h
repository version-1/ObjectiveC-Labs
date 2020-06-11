//
//  AddingQuestion.h
//  Lab5
//
//  Created by Administlator on 2020/06/11.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AddingQuestion: NSObject
- (bool) inspect: (int) answer;
- (int) genRandomNum;
- (NSString*) generateRandomQuestion;
- (NSString*) toString;

@end

NS_ASSUME_NONNULL_END
