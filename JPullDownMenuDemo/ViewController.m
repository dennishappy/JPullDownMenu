//
//  ViewController.m
//  JPullDownMenuDemo
//
//  Created by 开发者 on 16/5/19.
//  Copyright © 2016年 jinxiansen. All rights reserved.
//

#import "ViewController.h"
#import "JPullDownMenu.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@property (nonatomic) JPullDownMenu *menu ;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.menu = [[JPullDownMenu alloc]initWithFrame:CGRectMake(0, 64,self.view.frame.size.width, 40) menuTitleArray:@[@"残剑",@"长空",@"飞雪"]];
    
    NSArray * regionArray =@[@"黄浦区",@"南市区",@"卢湾区",@"徐汇区",@"不限"];
    NSArray *classTypeArray=@[@"学龄前",@"小学",@"初中",@"高中",@"成人"];
    NSArray *sortRuleArray=@[@"距离",@"价格",@"评分",@"最新",@"最热"];
    
    self.menu.menuDataArray = [NSMutableArray arrayWithObjects:regionArray, classTypeArray , sortRuleArray, nil];
    
    [self.view addSubview:self.menu];
    
    __weak typeof(self) _self = self;
    [self.menu setHandleSelectDataBlock:^(NSString *selectTitle, NSUInteger selectIndex, NSUInteger selectButtonTag) {
        
        _self.titleLabel.text = [NSString stringWithFormat:@"selectTitle = %@\n selectIndex = @%lu\n selectButtonTag = @%lu",selectTitle,selectIndex,selectButtonTag];
    }];

}



- (IBAction)changeData:(UIBarButtonItem *)sender {
    NSArray * regionArray =@[@"不限",@"嘉定区",@"浦东新区",@"金山区"];
    NSArray *classTypeArray=@[@"短期",@"长期"];
    NSArray *sortRuleArray=@[@"价格",@"评分",@"最新",@"最热"];
   self.menu.menuDataArray = [NSMutableArray arrayWithObjects:regionArray, classTypeArray , sortRuleArray, nil];
    
    //数据源如果改变的话需调用此方法刷新数据。
    [self.menu setDefauldSelectedCell];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
