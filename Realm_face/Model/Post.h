//
//  Post.h
//  Realm_face
//
//  Created by yaoln on 2017/4/18.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import <Realm/Realm.h>

@class Anthor;

RLM_ARRAY_TYPE(Post)
@interface Post : RLMObject

@property NSString *identify;
//title
@property NSString *title;
//anthor to-mang, 多对一个的关系 设置反向关系
@property Anthor *anthor;
//@property(readonly) RLMLinkingObjects  *anthor;
//time
@property NSDate *time;
//content
@property NSData *content;
//look
//@property NSInteger *look;
@property NSNumber<RLMInt> *look; //重点：常量类型在Realm数据库中的是不可以为空的，所有常量类型要被替换成对象类型,所以进行一次类型指定
//posts
@property RLMArray<Post *><Post> *posts;
//isTop
//@property BOOL isTop;
@property NSNumber<RLMBool> *isTop;

@end
