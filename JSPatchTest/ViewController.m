//
//  ViewController.m
//  JSPatchTest
//
//  Created by mac on 2018/1/5.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    // NSLog(@"%@",NSHomeDirectory());
    [self loadButton];
}

- (void)loadButton {
    UIButton *tipBtn = [[UIButton alloc] initWithFrame:CGRectMake(10, 50, 200, 30)];
    [tipBtn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [tipBtn setTitle:@"hello_jspatch" forState:UIControlStateNormal];
    [tipBtn addTarget:self action:@selector(clickedBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tipBtn];
}

- (void)clickedBtn:(UIButton *)sender {
    sender.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
