//
//  Box.h
//  Lab2
//
//  Created by Administlator on 2020/06/10.
//  Copyright © 2020 Administlator. All rights reserved.
//

#ifndef Box_h
#define Box_h

@interface Box: NSObject
{
    float height;
    float width;
    float length;
}
- (id) initWithFloats :(float)length :(float)height :(float)length;
- (float) size;
@end


#endif /* Box_h */
