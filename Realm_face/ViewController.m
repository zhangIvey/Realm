//
//  ViewController.m
//  Realm_face
//
//  Created by yaoln on 2017/4/13.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "ViewController.h"
#import <Realm.h>

#import "Dog.h"
#import "Person.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //主分支测试
    
    //主分支测试2
    
    UIView *tempview = [[UIView alloc] init];
    tempview.backgroundColor = [UIColor redColor];
    tempview.frame = self.view.frame;
    [self.view addSubview:tempview];
    
    //add_cocoapod分支测试
    
    //add_cocoapod再次进行分支测试
    
    //第三次分支测试
    
    
    /*开始主体功能*/
     //1:创建一个数据库，用来存储小狗的名字和年龄
    Dog *dog = [[Dog alloc] init];
    dog.dogName = @"jack";
    dog.dogAge = 3;
    
    Dog *dog2 = [[Dog alloc] init];
    dog2.dogName = @"jerry";
    dog2.dogAge = 2;
    
    //2:添加一个主人的记录
    Person *master = [[Person alloc] init];
    master.personName = @"小张";
    [master.dogs addObject:dog];
    [master.dogs addObject:dog2];
    
    //3：查询年龄小于2岁的小狗
    /**
     Realm的查询结果是动态的
     */
    RLMResults *results = [Dog objectsWhere:@"dogAge > 2"];
    
    //4:向数据库中写入内容 ——>添加小狗
    RLMRealm *realm = [RLMRealm defaultRealm];
    [realm transactionWithBlock:^(){
        [realm addObject:dog];
    }];
    
    //========================= 等效方法
//    [realm beginWriteTransaction];
//    [realm addObject:dog2];
//    [realm commitWriteTransaction];
    //=========================
    NSLog(@"result : %@",results);
    
    
    
    //4：线程操作
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^(void){
     //   （千万注意：不要跨线程去操作和处理对象 ）
        Dog *dog3 = [[Dog alloc] init];
        dog3.dogName = @"Tom";
        dog3.dogAge = 13;
        
        RLMRealm *realm = [RLMRealm defaultRealm];
        [realm beginWriteTransaction];
        [realm addObject:dog3];
        [realm commitWriteTransaction];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
