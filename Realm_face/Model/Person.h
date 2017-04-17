//
//  Person.h
//  Realm_face
//
//  Created by yaoln on 2017/4/17.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import <Realm/Realm.h>
#import "Dog.h"

RLM_ARRAY_TYPE(Dog) //Realm框架中 RLMArray类型必须设置保存集合中对象的类型

@interface Person : RLMObject
@property NSString *personName;
@property RLMArray<Dog *><Dog> *dogs;
/**
 RLM_ARRAY_TYPE(ObjectType)
 ...
 @property RLMArray<ObjectType *><ObjectType> *arrayOfObjectTypes;
 */
@end
