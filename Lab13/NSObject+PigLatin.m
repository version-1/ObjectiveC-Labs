//
//  NSObject+PigLatin.m
//  Lab13
//
//  Created by Administlator on 2020/06/12.
//  Copyright © 2020 Administlator. All rights reserved.
//

#import "NSObject+PigLatin.h"

@implementation NSString (PigLatin)
- (NSString*) pigLatinization: (NSString*) str {
    int i;
    NSMutableString *consonant = [[NSMutableString alloc] init];
    NSArray *vowels = [NSArray arrayWithObjects:@"a",@"i",@"u",@"e",@"o", nil];
    
    for (i = 0; i < str.length; i++) {
        NSString *onechar = [str substringWithRange:NSMakeRange(i, 1)];
        
        if (i == 0 && [vowels containsObject: [onechar lowercaseString]]) {
          return [NSString stringWithFormat:@"%@ay", str];
        }
        
        if (![vowels containsObject: [onechar lowercaseString]]) {
            [consonant appendString: onechar];
        } else {
            break;
        }
    }
    NSString *rest = [str substringWithRange:NSMakeRange(i, str.length - 1)];
    return  [NSString stringWithFormat:@"%@%@ay", rest, consonant];
}

- (NSString*) stringByPigLatinization: (NSString*) str {
    NSArray *words = [str componentsSeparatedByString:@" "];
    NSMutableString *res = [[NSMutableString alloc] init];
    for (NSString* word in words) {
        [res appendString: @" "];
        NSString* tmp = [NSString stringWithFormat: @"%@", [self pigLatinization :word]];
        [res appendString: tmp];
    }
    return res;
}
@end
