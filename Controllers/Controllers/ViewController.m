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
    self.lable.frame = CGRectMake(0, 0, 10, 10);
    self.lable.textAlignment = NSTextAlignmentCenter;
    // Do any additional setup after loading the view, typically from a nib.
    
    
//    //学习一：UILable
    UILabel *lable = [[UILabel alloc]init];   //创建Lable
    [self.view addSubview:lable];   //将lable添加到当前的视图中
    lable.frame = CGRectMake(0, 600, 100, 100);  //位置，宽高
    lable.backgroundColor = [self colorWidthR:225 Green:20 Blue:1];   //背景色
    lable.text = @"abc";   //text默认永远都是垂直居中
    lable.textAlignment = NSTextAlignmentCenter;
    lable.textAlignment = NSTextAlignmentLeft;
    lable.textAlignment = NSTextAlignmentRight;
    lable.textColor = [UIColor whiteColor];
    lable.textColor = [UIColor colorWithRed:0 green:1 blue:0 alpha:1];
    lable.layer.borderWidth =1;
    lable.layer.borderColor = [UIColor blueColor].CGColor;   //borderColor需要加上.CGColor
    lable.font = [UIFont systemFontOfSize:18];    //字体过大，超出部分会用...表示； 默认常规字体是17
    lable.font = [UIFont boldSystemFontOfSize:18];  //粗体
    lable.font = [UIFont italicSystemFontOfSize:18];  //斜体

    //学习二：UIButton
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];   //button为可自定义的button（自定义时默认是白色）
    [button setTitle:@"hello" forState:UIControlStateNormal];   //让按钮默认状态是显示文字 hello
    [button setTitleColor:[UIColor purpleColor] forState:UIControlStateHighlighted];  //高亮(点击时)的时候显示为紫色
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];  //默认显示为橘色
    [button addTarget:self action:@selector(xixi) forControlEvents:UIControlEventTouchUpInside];  //给button绑定一个点击事件，调用了self里面的xixi方法

    [self.view addSubview:button];
    button.frame = CGRectMake(200, 200, 100, 100);
    button.backgroundColor = [self colorWidthR:0 Green:255 Blue:255];
    
    self.dfff.layer.borderColor = [UIColor blackColor].CGColor;
    self.dfff.layer.borderWidth = 1;
    
    
    //学习三：UIImageView
    UIImageView *imageView1 = [[UIImageView alloc]init];   //初始化1
    imageView1.frame = CGRectMake(20, 20, 200, 100);       //位置和宽高
    [self.view addSubview:imageView1];                     //要把这个imageView1添加到view上才可用图片
    
    imageView1.image = [UIImage imageNamed:@"zly"];        //ImageView增加图片
    imageView1.userInteractionEnabled = YES;               //是否开启用户交互
    
    
    UIImageView *imageView2 = [[UIImageView alloc]init];    //初始化2
    imageView2.frame = CGRectMake(100, 100, 300, 600);      //位置和宽高
    [self.view addSubview:imageView2];                       //把imageView2加到view里面去
    imageView2.animationImages = @[[UIImage imageNamed:@"xg"], [UIImage imageNamed:@"hbd"]];   //设置动画图片
    imageView2.animationRepeatCount = 0;    //动画重复0次
    imageView2.animationDuration = 1;       //动画时长
    [imageView2 startAnimating];   //开启动画
    [self.view addSubview:imageView2];      //将imageView2添加到view上
    
    
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
