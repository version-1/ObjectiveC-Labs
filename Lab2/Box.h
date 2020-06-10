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
    NSMutableArray *fittedIn;
}
- (id) initWithFloats :(float)length :(float)height :(float)length;
- (int) add: (float) volume;
- (int) countInBox;
- (float) contentVolume;
- (float) volume;
@end


#endif /* Box_h */
