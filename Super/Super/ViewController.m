//
//  ViewController.m
//  Super
//
//  Created by 赵鹏 on 2019/7/3.
//  Copyright © 2019 赵鹏. All rights reserved.
//

#import "ViewController.h"
#import "ZPStudent.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark ————— 生命周期 —————
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ZPStudent *student = [[ZPStudent alloc] init];
    [student run];
    [student test];  //对于没有实现的方法，会调用ZPPerson类中的Runtime方法，从而避免程序的崩溃。
    [student other];
}


@end
