//
//  QuestionManager.h
//  Lab5
//
//  Created by Administlator on 2020/06/12.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject
@property (nonatomic) NSMutableArray* questions;
@property (nonatomic) float averageTime;
@property (nonatomic) float totalTime;
- (void) displayTime;
- (NSString*) ask: (Question*) q;
- (bool) inspect: (NSInteger) answer;
- (NSString*) stats;
@end

NS_ASSUME_NONNULL_END
