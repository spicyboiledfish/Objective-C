//
//  ViewController.m
//  usePureCode
//
//  Created by wangrui on 2018/4/8.
//  Copyright © 2018年 wangrui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


//当要显示一个界面的时候，首先要创建这个界面对应的控制器
//控制器创建好以后，接着创建控制器所管理的那个view,当这个view加载完毕以后就开始执行下面的方法了。
//所以只要viewDidLoad方法被执行了，就表示控制器所管理的view创建好了
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //动态创建我们自己的按钮
    //1. 创建按钮
//    UIButton *uiBtn = [[UIButton alloc] init];
    UIButton *uiBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //这两种创建按钮的方式都是可以的
    
    
    //2. 设置按钮的文字  设置默认状态下的文字和高亮下的文字
    [uiBtn setTitle:@"点我吧" forState:UIControlStateNormal];
    [uiBtn setTitle:@"快看我" forState:UIControlStateHighlighted];
    
    //3. 设置按钮的文字  设置默认状态下的文字颜色和高亮下的文字颜色
    [uiBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [uiBtn setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    //4. 设置按钮的背景图片  设置默认状态下的背景图片高亮下的背景图片
    UIImage *imgNormal = [UIImage imageNamed:@"timgw.png"];
    UIImage *imgHighLighted = [UIImage imageNamed:@"timgq.png"];
    
    [uiBtn setBackgroundImage:imgNormal forState:UIControlStateNormal];
    [uiBtn setBackgroundImage:imgHighLighted forState:UIControlStateHighlighted];
    
    //5. 设置按钮的frame
    uiBtn.frame = CGRectMake(100, 100, 200, 200);
    
    //6.为按钮添加一个单击事件
    [uiBtn addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    
    //7. 将动态创建的按钮uiBtn加到控制器所管理的那个view中
    [self.view addSubview:uiBtn];
}

- (void) buttonClick{
    NSLog(@"按钮被点击了。。。");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
