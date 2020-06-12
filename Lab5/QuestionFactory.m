//
//  QuestionFactory.m
//  Lab5
//
//  Created by Administlator on 2020/06/11.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "QuestionFactory.h"
#import "Question.h"
#import "AdditionQuestion.h"
#import "SubtractQuestion.h"
#import "MultipleQuestion.h"
#import "DivisionQuestion.h"

@implementation QuestionFactory

+ (Question*) createInstance
{
    NSInteger left = [self genRandomNum:100 :10];
    NSInteger right = [self genRandomNum:100 :10];
    
    NSArray *types = [[NSArray alloc] initWithObjects: AdditionQuestion.class, SubtractQuestion.class, MultipleQuestion.class ,DivisionQuestion.class, nil];
    NSInteger questionIndex = [self genRandomNum:[types count] - 1 :0];
    
    Class obj = [types objectAtIndex: questionIndex];
    return [[obj alloc] initWith :left :right];
}

+ (int) genRandomNum: (int) max: (int) min
{
    return arc4random_uniform(max - min + 1) + min;
}

@end
