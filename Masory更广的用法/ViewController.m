//
//  ViewController.m
//  Masory更广的用法
//
//  Created by 赵小波 on 2019/7/31.
//  Copyright © 2019 faceBrush. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
@interface ViewController ()

@property(nonatomic,strong)NSMutableArray *masoryDataArray;


@property(nonatomic,strong)NSMutableArray *secondDataArray;


@property(nonatomic,strong)NSMutableArray *threeDataArray;

@property(nonatomic,strong)NSMutableArray *fiveDataArray;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor blueColor];

    /////////////
    // 实现masonry水平固定间隔方法
    [self.masoryDataArray mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:30 leadSpacing:10 tailSpacing:10];
    /**
     固定间隔不固定宽高  30 是设置中间控件间隔 0 0 左右间隔
     **/

    [self.masoryDataArray mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedSpacing:30 leadSpacing:0 tailSpacing:0];

    [self.masoryDataArray mas_makeConstraints:^(MASConstraintMaker *make) {

        make.top.equalTo(@150);
        make.height.equalTo(@80);
    }];
    /**
      固定宽高 不固定间隔 50代表宽度
     **/
    [self.secondDataArray mas_distributeViewsAlongAxis:MASAxisTypeHorizontal withFixedItemLength:50 leadSpacing:0 tailSpacing:0];
    [self.secondDataArray mas_makeConstraints:^(MASConstraintMaker *make) {

        /**
         这里是设置垂直约束  高度设置
         **/
        make.top.equalTo(@150);
        make.height.equalTo(@200);
    }];
    
    /**
     垂直方向同样也可以设置 固定间隔 不固定宽度
     **/
    [self.threeDataArray  mas_distributeViewsAlongAxis:MASAxisTypeVertical withFixedSpacing:30 leadSpacing:10 tailSpacing:10];
    [self.threeDataArray mas_makeConstraints:^(MASConstraintMaker *make) {
       
        
        make.left.equalTo(@100);
        make.width.equalTo(@40);
    }];
    
}
-(NSMutableArray *)masoryDataArray{
    
    if (!_masoryDataArray) {
        /**
         懒加载数组在这里没有初始化
         **/
        _masoryDataArray=[NSMutableArray array];
        for (int i=0;  i<4;  i++) {
            
            UIView *bgView=[[UIView alloc]init];
            bgView.backgroundColor=[UIColor redColor];
            [self.view addSubview:bgView];
            [_masoryDataArray addObject:bgView];
        }
        
    }
    
    return _masoryDataArray;
}

-(NSMutableArray *)secondDataArray{
    
    if (!_secondDataArray) {
       
        /**
         懒加载数组在这里没有初始化
         **/
        _secondDataArray=[NSMutableArray array];
        for (int i=0;  i<4;  i++) {
            
            UIView *bgView=[[UIView alloc]init];
            bgView.backgroundColor=[UIColor redColor];
            [self.view addSubview:bgView];
            [_secondDataArray addObject:bgView];
        }
    }
    
    return _secondDataArray;
}
-(NSMutableArray *)threeDataArray{
    
    if (!_threeDataArray) {
        
        _threeDataArray=[NSMutableArray array];
        for (int i=0;  i<4;  i++) {
            
            UIView *bgView=[[UIView alloc]init];
            bgView.backgroundColor=[UIColor redColor];
            [self.view addSubview:bgView];
            [_threeDataArray addObject:bgView];
        }
        
    }
    
    return _threeDataArray;
}
-(NSMutableArray *)fiveDataArray{
    
    if (!_fiveDataArray) {
        
        _fiveDataArray=[NSMutableArray array];
        for (int i=0;  i<4;  i++) {
            
            UIView *bgView=[[UIView alloc]init];
            bgView.backgroundColor=[UIColor redColor];
            [self.view addSubview:bgView];
            [_fiveDataArray addObject:bgView];
        }
        
    }
    
    return _fiveDataArray;
}
@end
