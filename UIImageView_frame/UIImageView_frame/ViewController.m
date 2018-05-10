//
//  ViewController.m
//  UIImageView_frame
//
//  Created by wangrui on 2018/5/10.
//  Copyright © 2018年 wangrui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //如何设置UIImageView的frame的四种方法：
    
    //方法一：
//    UIImageView *imageView = [[UIImageView alloc] init];
//    imageView.image = [UIImage imageNamed:@"zly"];
//    imageView.frame = CGRectMake(0, 0, 235, 357);
    
    //方法二：
//    UIImageView *imageView = [[UIImageView alloc] init];
//    UIImage *image = [UIImage imageNamed:@"zly"];
//    imageView.frame = CGRectMake(0, 0, image.size.width, image.size.height);
//    imageView.image = image;
    
    //方法三：
//    UIImage *image = [UIImage imageNamed:@"zly"];
//    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
//    imageView.image = image;
    
    //方法四：
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"zly"]];
    
    
    [self.view addSubview:imageView];
    
}


@end
