//
//  ZPOneViewController.m
//  Modal方式显示控制器（代码）
//
//  Created by apple on 16/7/12.
//  Copyright © 2016年 apple. All rights reserved.
//

/**
 视图控制器之间有两种转场的方式：
 1、push方式：对于都处在视图控制器栈中的视图控制器来讲，在一个视图控制器类中可以通过调用"pushViewController: animated: "或者"popViewControllerAnimated: "方法来实现两个视图控制器之间的转场。push方式是页面左右滑行的动画效果；
 2、modal方式：在任何情况下（不一定处在视图控制器栈中）在一个视图控制器类中通过调用"presentViewController: animated:  completion: "或者"dismissViewControllerAnimated: completion: "方法来实现两个视图控制器之间的转场。modal方式是页面上下弹出的动画效果。
 
 对于本Demo，程序运行以后本视图控制器(ZPOneViewController)加载在窗口(UIWindow)上，所以此时屏幕显示的是本视图控制器所对应的View。在本视图控制器类中调用方法modal出另外一个新的视图控制器(ZPTwoViewController)以后，本视图控制器先暂时移到别处但不被销毁，同时本视图控制器所对应的View也就被移除了，并且刚刚modal出的另外一个视图控制器会加在UIWindow上的过度视图(UITransitionView)上，并且此时屏幕上显示的是那个modal出的新的视图控制器所对应的View。
 */
#import "ZPOneViewController.h"
#import "ZPTwoViewController.h"

@interface ZPOneViewController ()

@end

@implementation ZPOneViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

#pragma mark ————— 点击按钮 —————
//利用modal方式显示视图的时候不管当时显示的是哪个视图，window的根视图控制器始终都是ZPOneViewController。
- (IBAction)jump
{
    ZPTwoViewController *twoViewController = [[ZPTwoViewController alloc] init];
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:twoViewController];
    
    [self presentViewController:nav animated:YES completion:^{
        NSLog(@"以modal的方式实现两个视图控制器之间的转场");
    }];
    
    NSLog(@"******%@", self.presentedViewController);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
