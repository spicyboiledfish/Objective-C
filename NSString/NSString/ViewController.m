//
//  ViewController.m
//  testiOS
//
//  Created by Rui on 2018/1/4.
//  Copyright © 2018年 Rui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//get方法
//-(NSString *)wangmeili {
//
//}


//set方法
//- (void)setWangmeili:(NSString *)wangmeili{
//
//}

//get函数
- (NSString *) wangpiaoliang:(NSString *)abc{
    return abc;
}

//set函数
-(void) setWangpiaoliang:(NSString *)wangpiaoliang{
    wangpiaoliang = @"1";   //据说，这句话是不对的。晚上回家骆老师教我。
}


- (NSString *)getRui:(NSString *)a{
    return [a stringByAppendingString:@"ddd"];   //stringByAppendingString追加方法一定要用[]哦！！
}

- (NSString *)getWang:(NSString *)a hjbhbhbh:(NSString *)b{
    return [a stringByAppendingString:b];   //stringByAppendingString追加方法一定要用[]哦！！
}

//语义化方法：
//注意写法：冒号前面没有空格
//获取两个值的最大值
- (NSInteger)getMaxbyA:(NSInteger)a andB:(NSInteger)b{
    return MAX(a, b);
}

//获取长方形的面积
- (NSInteger)getAreabyWidth:(NSInteger)width andHeight:(NSInteger)height{
    return width * height;
}



//形参的写法：:(NSString *)a    也就是:(对象类型)形参名字

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    //两种基础数据类型：
    //NSInteger      写法：NSInteger（基础类型声明）
    //BOOL
    
    //    几种对象数据类型：写法 NSString * (对象类型声明)
    //    NSString *str = @"abc";
    //    NSNumber等等
    
    //    一、NSString创建并声明方法：字符串赋值 initWithString
    //    1.方法一：
    NSString *str1 = [[NSString alloc] init];
    str1 = @"abcjjsm";
    NSLog(@"str1:%@",str1);
    
    //      2.方法二：
    NSString *str2 = @"jofsdfvvvj";
    NSLog(@"str2:%@",str2);
    
    //      3.方法三：
    NSString *str3 = [[NSString alloc] initWithString:str2];
    NSLog(@"str3:%@",str3);
    
    //    二、获取字符串长度的方法：length
    //1. 这一块是调用了get中的方法，方法里的length属性（所以需要加空格）；%lu代表无符号的长整型
    NSLog(@"获取字符串长度方法一：%lu", [str1 length]);
    
    //2. 这一块是使用了点语法（并不是调用方法，所以可以不用加中括号[]）
    NSLog(@"获取字符串长度方法二：%lu",(unsigned long)str1.length);
    
    
    //    三、截取一个字符串中固定下标的字符 characterAtIndex
    //    (注意：这里的获取到的字符已经不是对象了，应该是character类型，字符类型)
    NSString *str4 = @"kfkasfiewfnk";
    char www = [str4 characterAtIndex:4];
    NSLog(@"截取某个下标的字符:%c",www);
    
    
    //    四、在字符串后追加字符 stringByAppendingString
    NSString *str5 = @"abc";
    str5 =  [str5 stringByAppendingString:@"heiheihei"];
    NSLog(@"追加字符串方法：%@",str5);
    
    
    //    五、截取子字符串From的方法：substringFromIndex（从下标开始，到字符串末尾）注意：只要是调用方法就使用空格 [s,a.length-1]
    str2 = [str2 substringFromIndex:2];
    NSLog(@"截取字符串From如下：%@",str2);    //fsdfvvvj
    
    //    六、截取子字符串To的方法：substringToIndex(从字符串首字符，到某下标结束) 注意：只要是调用方法就是需要使用空格  [0,s)
    str4 = [str4 substringToIndex:4];
    NSLog(@"截取字符串To如下：%@",str4);    //kfkas
    
    //    七、截取一定范围内的字符串：substringWithRange
    str5 = [str5 substringWithRange: NSMakeRange(0, 3)];  //[0,3) 左闭右开区间
    NSLog(@"截取一定范围内的字符串如下：%@",str5);   //abc
    
    //    八、判断两个字符串是否完全一样。1代表true；0代表false
    NSString *str6 = @"This is big.";
    NSString *str7 = @"this is big.";
    //NSOrderedSame表示字母一样，且大小顺序一样
    BOOL result1 = [str6 compare:str7] == NSOrderedSame;
    NSLog(@"result1:%d",result1);  //0
    
    BOOL result2 = [str6 compare:str7] == NSOrderedAscending;  //顺序：大写-》小写
    NSLog(@"result2:%d",result2);   //1
    
    BOOL result3 = [str6 compare:str7] == NSOrderedDescending; //逆序：小写-》大写
    NSLog(@"result3:%d",result3);   //0
    
    
    //    九、比较两者是否相等  1代表true；0代表false
    NSString *str8 = @"cccba";
    NSString *str9 = @"cccba";
    BOOL result4 = [str8 isEqualToString:str9];
    NSLog(@"result4:%d",result4);     //1
    
    //    十、是否有该字符串头 hasPrefix
    NSString *str10 = @"wangruiPerfect";
    BOOL result5 = [str10 hasPrefix:@"wangrui"];
    NSLog(@"result5:%d",result5);    //1
    
    //    十一、是否有该字符串尾 hasSuffix
    BOOL result6 = [str10 hasSuffix:@"Perfect"];
    NSLog(@"result6:%d",result6);    //1
    
    //    十二、将字符串都改成全部大写 uppercaseString
    NSString *str11 = @"wangruiPerfect";
    str11 = [str11 uppercaseString];
    NSLog(@"str11:%@", str11);
    
    //    十三、将字符串都改成全部小写  lowercaseString
    NSString *str12 = @"wangruiPerfect";
    str12 = [str12 lowercaseString];
    NSLog(@"str12:%@",str12);
    
    //    十四、首字母改成大写  capitalizedString
    
    NSString *str13 = @"wangruiPerfect";
    str13 = [str13 capitalizedString];
    NSLog(@"str13:%@",str13);
    
    
    //    十五、追加字符串
    
    NSString *str14 = @"wangruiPerfect";
    str14 = [str14 stringByAppendingString:@"abcxixixi"];
    NSLog(@"str14:%@",str14);
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

