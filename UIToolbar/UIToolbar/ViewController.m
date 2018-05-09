//
//  ViewController.m
//  UIToolbar
//
//  Created by wangrui on 2018/5/9.
//  Copyright © 2018年 wangrui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //1. 初始化imageView
    UIImageView *imageView = [[UIImageView alloc] init];
    
    //2. 添加imageView的背景色
    imageView.backgroundColor = [UIColor orangeColor];
    
    //3. imageView位置尺寸
    imageView.frame = self.view.bounds;
    //(0,0,self.view.frame.size.width,self.view.frame.size.height)
    
    //4. 添加背景图片，默认填充方式是scaleFill
    imageView.image = [UIImage imageNamed:@"11111.png"];
    
    //5. 设置内容模式
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    //6. 添加毛玻璃
    UIToolbar *toolbar = [[UIToolbar alloc] init];
    
    //7. 修改毛玻璃样式：
    toolbar.barStyle = UIBarStyleBlack;
    
    toolbar.frame = imageView.frame;
    
    toolbar.alpha = 0.8;
    //8. 将toolbar添加到imageView中
    [imageView addSubview:toolbar];
    
    //9. 将imageView添加到view中
    [self.view addSubview:imageView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
