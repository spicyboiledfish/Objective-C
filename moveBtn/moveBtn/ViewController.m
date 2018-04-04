//
//  ViewController.m
//  moveBtn
//
//  Created by wangrui on 2018/4/3.
//  Copyright © 2018年 wangrui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
- (IBAction)upBtn;
- (IBAction)rightBtn;
- (IBAction)leftBtn;
- (IBAction)downBtn;
- (IBAction)changeBig;
- (IBAction)changeSmall;

@property (weak, nonatomic) IBOutlet UIButton *img;

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


- (IBAction)upBtn {
    //首先获取到img的y坐标值，然后减小坐标值，再赋值给img的y坐标
    CGRect originFrame = self.img.frame; //只是将拿到的值先用originFrame存一下
    
    //将originFrame
    originFrame.origin.y -= 10;  //减掉了10
    self.img.frame = originFrame; //再将这个originFrame赋值给这个原始的img的frame
    NSLog(@"上");
}

- (IBAction)rightBtn {
    CGRect originFrame = self.img.frame;
    originFrame.origin.x +=10;
    self.img.frame = originFrame;
    
    NSLog(@"右");
}

- (IBAction)leftBtn {
    CGRect originFrame = self.img.frame;
    originFrame.origin.x -=10;
    self.img.frame = originFrame;
    
    NSLog(@"左");
}

- (IBAction)downBtn {
    CGRect originFrame = self.img.frame;
    
    //方法一：
//    originFrame.origin.y +=10;
    
    //方法二：
    originFrame.origin = CGPointMake(originFrame.origin.x, originFrame.origin.y+10);
    self.img.frame = originFrame;
    
    NSLog(@"下");
}

- (IBAction)changeBig {
    CGRect originFrame = self.img.frame;
    
    //方法一：
//    originFrame.size.width +=10;
//    originFrame.size.height +=10;
    
    //方法二：
    originFrame.size = CGSizeMake(originFrame.size.width +10, originFrame.size.height+10);
    self.img.frame = originFrame;
    
    NSLog(@"变大");
}

- (IBAction)changeSmall {
    
    CGRect originFrame = self.img.frame;
//    originFrame.size.width -=10;
//    originFrame.size.height -=10;
    
    originFrame.size = CGSizeMake(originFrame.size.width-10, originFrame.size.height-10);
    self.img.frame = originFrame;
    
    NSLog(@"变小");
}


@end
