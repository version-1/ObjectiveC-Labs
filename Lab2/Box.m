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
- (void) init: (float) _height: (float) _width: (float) _length
{
    height = _height;
    width = _width;
    length = _length;
}

- (float) size
{
    return height * width * length;
}

@end
