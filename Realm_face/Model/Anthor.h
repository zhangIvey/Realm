//
//  Anthor.h
//  Realm_face
//
//  Created by yaoln on 2017/4/18.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import <Realm/Realm.h>
#import "Post.h"

@interface Anthor : RLMObject

@property NSString *anthorName;

@property(readonly) RLMLinkingObjects *posts;

@end
