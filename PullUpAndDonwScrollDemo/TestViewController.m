//
//  TestViewController.m
//  PullUpAndDonwScrollDemo
//
//  Created by AlexGao on 2019/6/24.
//  Copyright © 2019 AlexGao. All rights reserved.
//

#import "TestViewController.h"

/*
 ⚠️congtentSize必须大于屏幕高度，多一个像素即可，否则无法响应回调
 */
@interface TestViewController ()<UIScrollViewDelegate>
@property (nonatomic, strong)UIView *contentView;
@property (nonatomic, strong)UIScrollView* middileScrollView;
@property (nonatomic, strong)UIScrollView* topScollView;
@property (nonatomic, strong)UIScrollView *bottomScollView;
@property (nonatomic, strong)UILabel *displayLabel;

@end

@implementation TestViewController

- (void)viewDidLoad {

    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.contentView];
    [self.contentView addSubview:self.topScollView];
    [self.contentView addSubview:self.middileScrollView];
    [self.contentView addSubview:self.bottomScollView];
    self.contentView.ag_y = -self.view.ag_height;
    // Do any additional setup after loading the view.
}
- (UIView *)contentView {
    
    if (!_contentView) {
        _contentView = [[UIView alloc] initWithFrame:CGRectMake(0.f, 0, SCREENSIZE.width, 3*self.view.ag_height)];
        _contentView.backgroundColor = [UIColor grayColor];
    }
    
    return _contentView;
    
}
- (UIScrollView *)topScollView
{
    if (!_topScollView) {
        _topScollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0.f, 0, SCREENSIZE.width, self.view.ag_height)];
        _topScollView.showsVerticalScrollIndicator = YES;
        _topScollView.backgroundColor = [UIColor purpleColor];
        _topScollView.delegate = self;
        _topScollView.contentSize = CGSizeMake(SCREENSIZE.width, self.view.ag_height+1);
        
        
        CGFloat displayProductLabelHeight = 40.f;
        _displayLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.f, self.view.ag_height - 40- 34, SCREENSIZE.width, displayProductLabelHeight)];
        _displayLabel.textAlignment = NSTextAlignmentCenter;
        _displayLabel.text = @"下拉显示中间ScrollView";
        [_topScollView addSubview:_displayLabel];
        
    }
    return _topScollView;
}

- (UIScrollView *)middileScrollView
{
    if (!_middileScrollView) {
        _middileScrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0.f, self.view.ag_height, SCREENSIZE.width, self.view.ag_height)];
        _middileScrollView.showsVerticalScrollIndicator = YES;
        _middileScrollView.backgroundColor = [UIColor redColor];
        _middileScrollView.delegate = self;
        _middileScrollView.contentSize = CGSizeMake(SCREENSIZE.width, self.view.ag_height+1);
        
        CGFloat displayProductLabelHeight = 40.f;
        _displayLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.f, 88, SCREENSIZE.width, displayProductLabelHeight)];
        _displayLabel.textAlignment = NSTextAlignmentCenter;
        _displayLabel.text = @"下拉显示顶部ScrollView";
        [_middileScrollView addSubview:_displayLabel];
        //添加上拉显示商品详情label
        
        _displayLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.f, self.view.ag_height - 40, SCREENSIZE.width, displayProductLabelHeight)];
        _displayLabel.textAlignment = NSTextAlignmentCenter;
        _displayLabel.text = @"上拉显示底部ScrollView";
        [_middileScrollView addSubview:_displayLabel];
        
    }
    return _middileScrollView;
}
- (UIScrollView *)bottomScollView
{
    if (!_bottomScollView) {
        _bottomScollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0.f, self.view.ag_height *2, SCREENSIZE.width, self.view.ag_height)];
        _bottomScollView.showsVerticalScrollIndicator = YES;
        _bottomScollView.backgroundColor = [UIColor orangeColor];
        _bottomScollView.delegate = self;
        _bottomScollView.contentSize = CGSizeMake(SCREENSIZE.width, self.view.ag_height+1);
        
        
        //添加上拉显示商品详情label
        CGFloat displayProductLabelHeight = 40.f;
        _displayLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.f, 88, SCREENSIZE.width, displayProductLabelHeight)];
        _displayLabel.textAlignment = NSTextAlignmentCenter;
        _displayLabel.text = @"下拉显示底部中间ScrollView";
        [_bottomScollView addSubview:_displayLabel];
        
    }
    return _bottomScollView;
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    CGFloat yOffset = scrollView.contentOffset.y;
    
    if (scrollView == _topScollView) {
        if (yOffset > 80) {
            [UIView animateWithDuration:0.4 animations:^{
                self.contentView.ag_y = -self.view.ag_height;
            } completion:nil];
            
        }
    }
    if (scrollView == _middileScrollView) {
        if (yOffset > 80) {
            [UIView animateWithDuration:0.4 animations:^{
                self.contentView.ag_y = -self.view.ag_height *2 ;
            } completion:nil];
            
        }
        if (yOffset <= 80) {
            [UIView animateWithDuration:0.4 animations:^{
                self.contentView.ag_y = 0;
            } completion:nil];
        }
    }
    if (scrollView == _bottomScollView) {
        if (yOffset <= 80) {
            [UIView animateWithDuration:0.4 animations:^{
                self.contentView.ag_y = -self.view.ag_height;//返回到中间vView
            } completion:nil];
            
        }
    }
    
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
