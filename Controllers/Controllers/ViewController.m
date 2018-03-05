//
//  ViewController.m
//  Controllers
//
//  Created by Rui on 2018/3/5.
//  Copyright © 2018年 Rui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lable;
@property (weak, nonatomic) IBOutlet UIButton *dfff;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lable.text = @"默认永远都是垂直居中";
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    //学习一：UILable
//    UILabel *lable = [[UILabel alloc]init];   //创建Lable
//    [self.view addSubview:lable];   //将lable添加到当前的视图中
//    lable.frame = CGRectMake(0, 0, 100, 100);  //位置，宽高
//    lable.backgroundColor = [self colorWidthR:225 Green:20 Blue:1];   //背景色
//    lable.text = @"abc";   //text默认永远都是垂直居中
//    lable.textAlignment = NSTextAlignmentCenter;
//    lable.textColor = [UIColor whiteColor];
//    lable.font = [UIFont systemFontOfSize:18];    //字体过大，超出部分会用...表示； 默认常规字体是17
//
//
//
//
//
    //学习二：UIButton
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];   //button为可自定义的button（自定义时默认是白色）
    [button setTitle:@"hello" forState:UIControlStateNormal];   //让按钮默认状态是显示文字 hello
    [button setTitleColor:[UIColor purpleColor] forState:UIControlStateHighlighted];  //高亮(点击时)的时候显示为紫色
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];  //默认显示为橘色
    [button addTarget:self action:@selector(xixi) forControlEvents:UIControlEventTouchUpInside];  //给button绑定一个点击事件，调用了self里面的xixi方法

    [self.view addSubview:button];
    button.frame = CGRectMake(200, 200, 100, 100);
    button.backgroundColor = [self colorWidthR:0 Green:255 Blue:255];
}







- (IBAction)fffff:(id)sender {
    NSLog(@"asdasd");
}

-(UIColor *)colorWidthR:(NSInteger)R Green:(NSInteger)G Blue:(NSInteger)B{     //封装颜色
    return [UIColor colorWithRed:R/255.00 green:G/255.00 blue:B/255.0 alpha:1];
}

- (void)xixi{     //xixi方法
    NSLog(@"lili");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
