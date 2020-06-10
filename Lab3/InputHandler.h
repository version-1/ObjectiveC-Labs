//
//  InputHandler.h
//  ObjectiveC-Labs
//
//  Created by Administlator on 2020/06/10.
//  Copyright © 2020 Administlator. All rights reserved.
//

#ifndef InputHandler_h
#define InputHandler_h
@interface InputHandler: NSObject
+ (NSString*) getUserInput: (int) maxLength: (NSString*) prompt;
@end

#endif /* InputHandler_h */
