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
    self.img.frame = originFrame;
    
}
@end
