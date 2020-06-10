//
//  ScoreKeeper.h
//  Lab3
//
//  Created by Administlator on 2020/06/10.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject
- (float) rate;
- (void) match;
- (void) miss;
- (NSString *) score;
@end

NS_ASSUME_NONNULL_END
