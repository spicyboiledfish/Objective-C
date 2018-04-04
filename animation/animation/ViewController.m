//
//  ViewController.m
//  moveBtn
//
//  Created by wangrui on 2018/4/3.
//  Copyright © 2018年 wangrui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *img;

- (IBAction)moveBtn:(UIButton *)sender;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)moveBtn:(UIButton *)sender {
    //1. 获取值
    CGRect originFrame = self.img.frame;
    
    //2. 表达式
    switch (sender.tag) {
        case 1:
            //上：
            originFrame.origin.y -=10;
            break;
        case 2:
            //右：
            originFrame.origin.x +=10;
            break;
        case 3:
            //下：
            originFrame.origin.y +=10;
            break;
        case 4:
            //左：
            originFrame.origin.x -=10;
            break;
        case 5:
            //变大：
            originFrame.size.width +=10;
            originFrame.size.height +=10;
            break;
        case 6:
            //变小：
            originFrame.size.width -=10;
            originFrame.size.height -=10;
            break;
            
        default:
            break;
    }
    //3. 重新赋值
    
    //方法一：这是没有动画，直接变换
//    self.img.frame = originFrame;
    
    //方法二：添加动画，过渡进行变换
    //头尾式方法：
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:1];
//    self.img.frame = originFrame;
//    [UIView commitAnimations];
    
    //block方法：
    [UIView animateWithDuration:0.5 animations:^{
        self.img.frame = originFrame;
    }];
    
}
@end
