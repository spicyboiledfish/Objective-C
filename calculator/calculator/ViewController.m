//
//  ViewController.m
//  calculator
//
//  Created by wangrui on 2018/3/27.
//  Copyright © 2018年 wangrui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
//声明计算按钮方法：
- (IBAction)compute;

//第一个输入框
@property (weak, nonatomic) IBOutlet UITextField *txtNum1;

//第二个输入框
@property (weak, nonatomic) IBOutlet UITextField *txtNum2;

//计算结果
@property (weak, nonatomic) IBOutlet UILabel *lblResult;


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


- (IBAction)compute {
    //1. 获得到的值是字符串，用NSSting存起来
    NSString *num1 = self.txtNum1.text;
    NSString *num2 = self.txtNum2.text;
    
    //判断输入框的值是否为空，并且给出alert提示
    if(num1.length == 0){
        NSLog(@"请输入第一个数");
        //添加alert
//        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"输入有误" message:@"请输入第一个数" delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
//        [alertView show];
        
        [self showAlert:@"请输入第一个数"];
        return;
    }
    
    if(num2.length == 0){
        NSLog(@"请输入第二个数");
//        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"输入有误" message:@"请输入第一个数" delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
//        [alertView show];
        
        [self showAlert:@"请输入第二个数"];
        return;
    }
    
    //2. 将字符串类型转换成整数类型
    int n1 = num1.intValue;
    int n2 = [num2 intValue];
    
    //3. 求和
    int computeResult = n1 + n2;
    
    //4. 将整数类型转换为字符串，并赋值给lblResult
    //左方是NSString类型；所以右方需要将computeResult转成NSString类型
    self.lblResult.text = [NSString stringWithFormat:@"%d",computeResult];
    
    //5. 把键盘叫回去，谁叫出来的键盘，就成为了“第一响应者”，再把键盘叫回去
    //    [self.txtNum2 resignFirstResponder];
    //    [self.txtNum1 resignFirstResponder];
    
    //6.第二种叫回去所有的键盘方法：
    [self.view endEditing:YES];
    
}

- (void) showAlert :(NSString *)info{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"输入有误" message:info delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
    [alertView show];
}


@end
