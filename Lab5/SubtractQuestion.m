//
//  SubtractQuestion.m
//  Lab5
//
//  Created by Administlator on 2020/06/12.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "SubtractQuestion.h"

@implementation SubtractQuestion
- (NSString*) ask
{
    [super ask];
    return [NSString stringWithFormat:@"%d - %d ?", self.left, self.right];
}


- (void) calculate
{
    self.answer = self.left - self.right;
}
@end
