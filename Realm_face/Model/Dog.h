//
//  Dog.h
//  Realm_face
//
//  Created by yaoln on 2017/4/17.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import <Realm/Realm.h>

@interface Dog : RLMObject
/**
    在声明变量时，在属性的类型前面不再添加 strong, weak, nonatomic等描述，Realm官方推荐的写法
 */
@property NSString *dogName;  //小狗的名字
@property int dogAge; //小狗的年龄

@end
