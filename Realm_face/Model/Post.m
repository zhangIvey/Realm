//
//  Post.m
//  Realm_face
//
//  Created by yaoln on 2017/4/18.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "Post.h"
#import "Anthor.h"

@implementation Post

//设置反向关系，重中之重
+ (NSDictionary<NSString *, RLMPropertyDescriptor *> *)linkingObjectsProperties
{
    return @{@"anthor":[RLMPropertyDescriptor descriptorWithClass:Anthor.class propertyName:@"posts"]};
}

//不能为空
+ (NSArray<NSString *> *)requiredProperties
{
    return @[@"title",@"time",@"content"];
}

//可忽略的属性,
+ (NSArray *)ignoredProperties {
    return @[@"look"];
}

//默认值的指定
+ (NSDictionary *)defaultPropertyValues {
    return @{@"time":[NSDate date]};
}

//索引属性指定
+ (NSArray *)indexedProperties {
    return @[@"time",@"identify"];
}

//主键设置
+ (NSString *)primaryKey {
    return @"identify";
}

//查询的执行效率
/**
    primarykey > indexedProperties > properties
 */

@end
