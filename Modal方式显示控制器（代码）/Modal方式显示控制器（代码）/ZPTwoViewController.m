//
//  ZPTwoViewController.m
//  Modal方式显示控制器（代码）
//
//  Created by apple on 16/7/12.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ZPTwoViewController.h"

@interface ZPTwoViewController ()

@end

@implementation ZPTwoViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:UIBarButtonItemStyleDone target:self action:@selector(cancel)];
}

#pragma mark ————— 点击导航栏左侧的取消按钮 —————
//调用"dismissViewControllerAnimated: completion: "方法以后本视图控制器将会被销毁。
- (IBAction)cancel
{
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"销毁本视图控制器");
    }];
}

#pragma mark ————— 视图控制器被销毁的时候会调用这个方法 —————
-(void)dealloc
{
    NSLog(@"本视图控制器被销毁了");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
