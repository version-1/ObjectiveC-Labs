//
//  NSString+PigLatin.m
//  Lab13
//
//  Created by Administlator on 2020/06/12.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)
- (NSString*) pigLatinization {
    int i;
    NSMutableString *consonant = [[NSMutableString alloc] init];
    NSArray *vowels = [NSArray arrayWithObjects:@"a",@"i",@"u",@"e",@"o", nil];
    
    for (i = 0; i < self.length; i++) {
        NSString *onechar = [self substringWithRange:NSMakeRange(i, 1)];
        
        if (i == 0 && [vowels containsObject: [onechar lowercaseString]]) {
          return [NSString stringWithFormat:@"%@ay", self];
        }
        
        if (![vowels containsObject: [onechar lowercaseString]]) {
            [consonant appendString: onechar];
        } else {
            break;
        }
    }
    NSString *rest = [self substringWithRange:NSMakeRange(i, self.length - 1)];
    return  [NSString stringWithFormat:@"%@%@ay", rest, consonant];
}

- (NSString*) stringByPigLatinization {
    NSArray *words = [self componentsSeparatedByString:@" "];
    NSMutableString *res = [[NSMutableString alloc] init];
    for (NSString* word in words) {
        [res appendString: @" "];
        NSString* tmp = [NSString stringWithFormat: @"%@", [self pigLatinization]];
        [res appendString: tmp];
    }
    return res;
}
@end
