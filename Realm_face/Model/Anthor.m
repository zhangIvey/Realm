//
//  Anthor.m
//  Realm_face
//
//  Created by yaoln on 2017/4/18.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "Anthor.h"

@implementation Anthor

+ (NSDictionary<NSString *, RLMPropertyDescriptor *> *)linkingObjectsProperties
{
    return @{@"posts":[RLMPropertyDescriptor descriptorWithClass:Post.class propertyName:@"anthor"]};
}

+(NSArray<NSString *> *)requiredProperties
{
    return @[@"anthorName"];
}

@end
