//
//  Box.m
//  Lab2
//
//  Created by Administlator on 2020/06/10.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Box.h"


@implementation Box
- (id) initWithFloats: (float) _height: (float) _width: (float) _length
{
    height = _height;
    width = _width;
    length = _length;
    fittedIn = [[NSMutableArray alloc] init];
    return self;
}

- (int) add: (float) volume
{
    if ([self contentVolume] + volume > [self volume]) {
        return [fittedIn count];
    }
    NSNumber *num = [NSNumber numberWithFloat:volume];
    [fittedIn addObject: num];
    return [fittedIn count];
}

- (float) contentVolume
{
    float sum = 0;
    int i;
    for (i = 0; i < [fittedIn count];i++ ) {
        sum += [[fittedIn objectAtIndex: i] floatValue];
    }
    return sum;
}


- (float) volume
{
    return height * width * length;
}

- (int) countInBox
{
    return [fittedIn count];
}
@end
