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
    self.bgImageView.frame = toolBar.bounds;
    [self.bgImageView addSubview:toolBar];
    toolBar.barStyle = UIBarStyleBlack;
    toolBar.alpha = 0.5;
    
}


@end
