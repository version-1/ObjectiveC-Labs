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

@implementation QuestionFactory

+ (Question*) createInstance
{
    NSInteger left = [self genRandomNum:100 :10];
    NSInteger right = [self genRandomNum:100 :10];
    NSInteger questionIndex = [self genRandomNum:1 :0];
    Question *q;
    if (questionIndex == 0) {
        q = [[AdditionQuestion alloc] initWith :left :right];
    }
    
    if (questionIndex == 1) {
        q = [[SubtractQuestion alloc] initWith :left :right];
    }
    return q;
}

+ (int) genRandomNum: (int) max: (int) min
{
    return arc4random_uniform(max - min + 1) + min;
}

@end
