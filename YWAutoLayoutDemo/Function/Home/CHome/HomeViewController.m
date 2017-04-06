//
//  HomeViewController.m
//  YWAutoLayoutDemo
//
//  Created by 王亚文 on 2017/4/6.
//  Copyright © 2017年 wyw. All rights reserved.
//

#import "HomeViewController.h"
#import "YWAutoLayout.h"


@interface HomeViewController ()

@property (nonatomic, strong)UIImageView            *bgImgView;
@property (nonatomic, strong)UIButton               *registerBtn;
@property (nonatomic, strong)UIButton               *loginBtn;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadTitleView];
    [self loadContentView];
}

- (void)loadTitleView
{
    self.titleLabel.text = @"YWAutoLayoutDemo";
    self.leftButton.hidden = YES;
}

- (void)loadContentView
{
    _bgImgView = [UIImageView create];
    _bgImgView.image = [UIImage imageNamed:@"01"];
    [self.contentView addSubview:_bgImgView];
    LAY(_bgImgView.left, self.contentView.left, 1, 0);
    LAY(_bgImgView.right, self.contentView.right, 1, 0);
    LAY(_bgImgView.top, self.contentView.top, 1, 0);
    LAY(_bgImgView.bottom, self.contentView.bottom, 1, 0);
    
    _registerBtn = [UIButton create];
    [_registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    [_registerBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _registerBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _registerBtn.layer.masksToBounds = YES;
    _registerBtn.layer.cornerRadius = 4.f;
    _registerBtn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _registerBtn.layer.borderWidth = 1.f;
    [self.contentView addSubview:_registerBtn];
    LAY(_registerBtn.left, self.contentView.left, 1, 80.f);
    LAY(_registerBtn.bottom, self.contentView.bottom, 1, -80.f);
    LAYC(_registerBtn.width, 90.f);
    LAYC(_registerBtn.height, 35.f);
    
    _loginBtn = [UIButton create];
    [_loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [_loginBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _loginBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _loginBtn.layer.masksToBounds = YES;
    _loginBtn.layer.cornerRadius = 4.f;
    _loginBtn.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _loginBtn.layer.borderWidth = 1.f;
    [self.contentView addSubview:_loginBtn];
    LAY(_loginBtn.right, self.contentView.right, 1, -80.f);
    LAY(_loginBtn.bottom, self.contentView.bottom, 1, -80.f);
    LAYC(_loginBtn.width, 90.f);
    LAYC(_loginBtn.height, 35.f);
    
    
}



@end
