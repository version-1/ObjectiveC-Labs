//
//  ScoreKeeper.m
//  Lab5
//
//  Created by Administlator on 2020/06/11.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper {
    int right;
    int wrong;
}
- (instancetype) init {
    if (self = [super init]) {
        right = 0;
        wrong = 0;
    }
    return self;
}

- (float) rate
{
    if (right == 0 && wrong == 0) {
        return 0;
    }
    return right / (float)(right + wrong) * (float)100;
}
- (void) match
{
    right++;
}

- (void) miss
{
    wrong++;
}


- (NSString*) score {
    return [NSString stringWithFormat:@"score: %d right, %d wrong ---- %.0f%%%%", right, wrong, [self rate]];
}
@end
