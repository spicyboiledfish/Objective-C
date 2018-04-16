//
//  ViewController.m
//  transform
//
//  Created by wangrui on 2018/4/11.
//  Copyright © 2018年 wangrui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic, weak) UIButton *button;   //这个声明要写在@interface后面，为啥
- (IBAction)move;
- (IBAction)rotate;
- (IBAction)scale;
- (IBAction)reset;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *button = [[UIButton alloc] init];  //新建一个button
    [button setTitle:@"看我吧" forState:UIControlStateNormal];
    [button setTitle:@"再点一下" forState:UIControlStateHighlighted];
    
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateHighlighted];
    
    [button setBackgroundImage:[UIImage imageNamed:@"timgq.png"] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:@"timgw.png"] forState:UIControlStateHighlighted];
    
    button.frame = CGRectMake(100, 100, 80, 80);
    
    [self.view addSubview:button];
    self.button = button;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)move {
    self.button.transform = CGAffineTransformTranslate(self.button.transform, 0, 10);
    
    
}

- (IBAction)rotate {
    self.button.transform = CGAffineTransformRotate(self.button.transform, M_PI_4);
}

- (IBAction)scale {
    self.button.transform = CGAffineTransformScale(self.button.transform, 1.5, 1.5);
}

- (IBAction)reset {
    self.button.transform = CGAffineTransformIdentity;
}

@end
