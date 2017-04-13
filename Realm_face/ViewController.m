//
//  ViewController.m
//  Realm_face
//
//  Created by yaoln on 2017/4/13.
//  Copyright © 2017年 zhangze. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *tempview = [[UIView alloc] init];
    tempview.backgroundColor = [UIColor redColor];
    tempview.frame = self.view.frame;
    [self.view addSubview:tempview];
    
    //add_cocoapod分支测试
    
    //add_cocoapod再次进行分支测试
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
