//
//  ViewController.m
//  QQLogin
//
//  Created by wangrui on 2018/4/2.
//  Copyright © 2018年 wangrui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *qqInput;
@property (weak, nonatomic) IBOutlet UITextField *pwdInput;

- (IBAction)loginBtn;
    //登录按钮

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.pwdInput.secureTextEntry = YES;     //在页面加载完成之后的事件里面写密码输入框为暗文
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)loginBtn {
    //点击按钮的时候，让view下的所有输入框停止编辑（键盘弹回去）
    [self.view endEditing:YES];
    //打印出来qq账号和密码，字符用%@，两个字符就是%@%@，后面用逗号隔开，三个字符就是%@%@%@
    NSLog(@"%@-%@",self.qqInput.text, self.pwdInput.text);
    
    
}
@end
