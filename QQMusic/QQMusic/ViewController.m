//
//  ViewController.m
//  QQMusic
//
//  Created by wangrui on 2018/5/10.
//  Copyright © 2018年 wangrui. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;
@property(nonatomic, strong)AVPlayer *player;

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
    
    //添加播放器
    
    //方法一：
//    NSString *path = [[NSBundle mainBundle] pathForResource:@"like.mp3" ofType:nil];
//    NSURL *url = [NSURL fileURLWithPath:path];
    
    //方法二：
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"why.mp3" withExtension:nil];
    AVPlayerItem *playerItem = [[AVPlayerItem alloc] initWithURL:url];
    self.player = [[AVPlayer alloc] initWithPlayerItem:playerItem];

}

//播放或者暂停歌曲：

- (IBAction)play:(id)button {
    UIButton *btn = button;
    switch (btn.tag) {
        case 1:
            [self.player play];
            break;
        case 2:
            [self.player pause];
            break;
        default:
            break;
    }
    
}

//上一首或者下一首
- (IBAction)next:(id)button {
    UIButton *btn = button;
    NSString *musicName = nil;
    switch (btn.tag) {
        case 3:
            musicName = @"like.mp3";
            break;
        case 4:
            musicName = @"rose.mp3";
            break;
        default:
            break;
    }
    
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:musicName withExtension:nil];
    AVPlayerItem *playerItem = [[AVPlayerItem alloc] initWithURL:url];
    [self.player replaceCurrentItemWithPlayerItem:playerItem];
    //播放
    [self.player play];
}


@end
