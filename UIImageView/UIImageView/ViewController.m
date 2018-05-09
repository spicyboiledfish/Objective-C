//
//  ViewController.m
//  UIImageView
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
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame = CGRectMake(100, 100, 200, 100);
    imageView.backgroundColor = [UIColor redColor];
    imageView.image = [UIImage imageNamed:@"11111.png"];
    
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    /*
     UIViewContentModeScaleToFill,
     UIViewContentModeScaleAspectFit,
     UIViewContentModeScaleAspectFill,
     
     UIViewContentModeRedraw,
     UIViewContentModeCenter,
     UIViewContentModeTop,
     UIViewContentModeBottom,
     UIViewContentModeLeft,
     UIViewContentModeRight,
     UIViewContentModeTopLeft,
     UIViewContentModeTopRight,
     UIViewContentModeBottomLeft,
     UIViewContentModeBottomRight,
     */
    
    //剪切：默认是NO;这个不需要写双引号
    imageView.clipsToBounds = YES;
    [self.view addSubview:imageView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
