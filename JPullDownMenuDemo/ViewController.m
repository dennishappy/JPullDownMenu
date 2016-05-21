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
    
    NSArray * regionArray =@[@"黄浦区",@"南市区",@"卢湾区",@"徐汇区",@"长宁区",@"静安区",@"普陀区",@"闸北区",@"虹口区",@"杨浦区",@"闵行区",@"宝山区",@"嘉定区",@"浦东新区",@"金山区",@"松江区",@"奉贤区",@"青浦区",@"崇明区",@"不限"];
    NSArray *classTypeArray=[[NSArray alloc]initWithObjects:@"学龄前",@"小学",@"初中",@"高中",@"成人",@"亲子班",@"一对一",@"小班",@"大班",@"长期",@"短期",@"次课", nil];
    NSArray *sortRuleArray=[[NSArray alloc]initWithObjects:@"距离",@"价格",@"评分",@"最新",@"最热", nil];
    
    self.menu.menuDataArray = [NSMutableArray arrayWithObjects:regionArray, classTypeArray , sortRuleArray, nil];
    
    [self.view addSubview:self.menu];
    
    __weak typeof(self) _self = self;
    [self.menu setHandleSelectDataBlock:^(NSString *selectTitle, NSUInteger selectIndex, NSUInteger selectButtonTag) {
        
        NSLog(@"selectTitle = %@ selectIndex = @%lu selectButtonTag = @%lu",selectTitle,selectIndex,selectButtonTag);
        
        _self.titleLabel.text = [NSString stringWithFormat:@"selectTitle = %@\n selectIndex = @%lu\n selectButtonTag = @%lu",selectTitle,selectIndex,selectButtonTag];
    }];

}



- (IBAction)changeData:(UIBarButtonItem *)sender {
    NSArray * regionArray =@[@"奉贤区",@"青浦区",@"崇明区",@"不限",@"嘉定区",@"浦东新区",@"金山区"];
    NSArray *classTypeArray=[[NSArray alloc]initWithObjects:@"短期",@"次课", nil];
    NSArray *sortRuleArray=[[NSArray alloc]initWithObjects:@"价格",@"评分",@"最新",@"最热", nil];
   self.menu.menuDataArray = [NSMutableArray arrayWithObjects:regionArray, classTypeArray , sortRuleArray, nil];
    
    //数据源如果改变的话需调用此方法刷新数据。
    [self.menu setDefauldSelectedCell];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
