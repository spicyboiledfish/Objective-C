//
//  ViewController.m
//  QQMusic
//
//  Created by wangrui on 2018/5/10.
//  Copyright © 2018年 wangrui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIToolbar *toolBar = [[UIToolbar alloc] init];
    toolBar.barStyle = UIBarStyleBlack;
    toolBar.alpha = 0.9;
    self.bgImageView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    toolBar.frame = self.bgImageView.frame;
    [self.bgImageView addSubview:toolBar];

}

- (IBAction)play:(id)sender {
    
}

@end
