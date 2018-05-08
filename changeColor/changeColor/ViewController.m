//
//  ViewController.m
//  changeColor
//
//  Created by wangrui on 2018/5/8.
//  Copyright © 2018年 wangrui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;


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


- (IBAction)redBtn:(id)sender {
    self.label.textColor = [UIColor redColor];
    NSLog(@"%s",__func__);
}

- (IBAction)greenBtn:(id)sender {
    self.label.textColor = [UIColor greenColor];
    NSLog(@"%s",__func__);
}

- (IBAction)blueBtn:(id)sender {
    self.label.textColor = [UIColor blueColor];
    NSLog(@"%s",__func__);
}




@end
