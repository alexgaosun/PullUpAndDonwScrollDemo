//
//  ViewController.m
//  PullUpAndDonwScrollDemo
//
//  Created by AlexGao on 2019/6/24.
//  Copyright © 2019 AlexGao. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
@interface ViewController ()
@property(nonatomic, strong)UIButton *btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.btn];
    // Do any additional setup after loading the view.
}
- (UIButton *)btn {
    
    if (!_btn) {
        _btn = [[UIButton alloc] initWithFrame:CGRectMake(100.f, 100.f, 200.f, 100.f)];
        _btn.backgroundColor = [UIColor lightGrayColor];
        
        [_btn setTitle:@"进入测试页面" forState:UIControlStateNormal];
        [_btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchDown];
    }
    return _btn;
    
}
#pragma mark - event response
- (void)btnAction:(UIButton *)btn {
    
    //    EOCMainViewController *productDetailViewCtrl = [[EOCMainViewController alloc] init];
    //    [self.navigationController pushViewController:productDetailViewCtrl animated:YES];
    
    TestViewController *testCtrl = [[TestViewController alloc] init];
    [self.navigationController pushViewController:testCtrl animated:YES];
}

@end
