//
//  ViewController.m
//  subview
//
//  Created by wangrui on 2018/4/16.
//  Copyright © 2018年 wangrui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txt;
- (IBAction)btn:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txt1;

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


- (IBAction)btn:(id)sender {
    //superview代表的是父控件（父控件只有一个）
    //subviews代表的是子控件（子控件会有很多个，是一个NSArray数组）
    
    //将txt文本框的父组件的背景色变成红色
    self.txt.superview.backgroundColor = [UIColor redColor];
    
    //让view下的所有子控件subviews全部变成背景色为黄色
    for (UIView *view in self.view.subviews) {
        view.backgroundColor = [UIColor yellowColor];
    }
    
    self.txt1.superview.backgroundColor = [UIColor blueColor];
}
@end
