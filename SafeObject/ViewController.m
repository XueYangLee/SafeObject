//
//  ViewController.m
//  SafeObject
//
//  Created by mac on 2020/6/29.
//  Copyright © 2020 XueYangLee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    NSArray *array=@[@"1",@"2",@"3"];
    NSMutableArray *muArray=[NSMutableArray arrayWithArray:array];
    NSLog(@"%@>>数组下标越界超出>",[muArray objectAtIndex:10]);
    
    NSString *str=@"数组字典字符串越界问题处理";
    NSLog(@"%@>>字符串下标越界超出>",[str substringFromIndex:100]);
    
    NSString *emptyString=nil;
    NSDictionary *dic=@{@"name":@"haha",@"age":@"18",@"empty":emptyString};
    NSLog(@"%@>>字典复制为空>",dic);
    
    NSMutableDictionary *muDic=[NSMutableDictionary dictionaryWithDictionary:dic];
    [muDic removeObjectForKey:nil];
    [muDic setObject:nil forKey:nil];
    NSLog(@"%@>>字典移除或添加的的key或object为nil>",muDic);
}


@end
