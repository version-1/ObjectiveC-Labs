//
//  AddingQuestion.m
//  Lab5
//
//  Created by Administlator on 2020/06/11.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "MultipleQuestion.h"

@implementation MultipleQuestion

- (NSString*) ask
{
    [super ask];
    return [NSString stringWithFormat:@"%d x %d ?", self.left, self.right];
}


- (void) calculate
{
    self.answer = self.left * self.right;
}

@end
