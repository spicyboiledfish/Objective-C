//
//  ViewController.m
//  UIImageView_picPath
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
    
    //UIImageView如何设置图片路径
//    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"zly"]];
    
    UIImageView *imageView = [[UIImageView alloc] init];
    NSString *path = [[NSBundle mainBundle] pathForResource:@"zly" ofType:@"png"];
    imageView.frame = CGRectMake(0, 0, 200, 300);
    imageView.image = [UIImage imageWithContentsOfFile:path];
    
    [self.view addSubview:imageView];
    
}


@end
