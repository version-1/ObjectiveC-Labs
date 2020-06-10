//
//  AddingQuestion.h
//  ObjectiveC-Labs
//
//  Created by Administlator on 2020/06/10.
//  Copyright © 2020 Administlator. All rights reserved.
//

#ifndef AddingQuestion_h
#define AddingQuestion_h

@interface AddingQuestion: NSObject
{
    int left;
    int right;
    int answer;
}
- (bool) inspect: (int) answer;
- (int) genRandomNum;
- (NSString*) generateRandomQuestion;
- (NSString*) toString;

@end


#endif /* AddingQuestion_h */
