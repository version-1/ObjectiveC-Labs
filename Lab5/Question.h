//
//  Question.h
//  Lab5
//
//  Created by Administlator on 2020/06/11.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject
@property (nonatomic) NSInteger answer;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic) NSInteger left;
@property (nonatomic) NSInteger right;
- (instancetype) initWith: (NSInteger) left: (NSInteger) right;
- (NSString*) ask;
- (void) calculate;
- (bool) inspect: (NSInteger) _answer;
- (NSInteger) timediff;
@end

NS_ASSUME_NONNULL_END
