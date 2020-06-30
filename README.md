# SafeObject
#####利用方法替换实现统一处理数组越界、字符串下标越界及字典赋值为空时造成的崩溃问题

####方法使用
将`SafeObject`文件夹拖入工程即可


```
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
```

####涉及处理的方法
+ NSArray/NSMutableArray
    * objectAtIndex
    * removeObjectsInRange
    * removeObject: inRange:
    * insertObject: atIndex:
    * objectAtIndexedSubscript
  
+ NSDictionary/NSMutableDictionary
    * removeObjectForKey
    * setObject:forKey:
    * initWithObjects:forKeys:count:
    
+ NSMutableString
    * substringFromIndex
    * substringToIndex
    * substringWithRange
    * rangeOfString: options:range: locale:
    * appendString
