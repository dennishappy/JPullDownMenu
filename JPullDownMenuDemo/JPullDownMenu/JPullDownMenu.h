//
//  JPullDownMenu.h
//  JPullDownMenuDemo
//
//  Created by 开发者 on 16/5/19.
//  Copyright © 2016年 jinxiansen. All rights reserved.
//

#import <UIKit/UIKit.h>

//@protocol JPullDOwnMenuDelegate <NSObject>
//
////-(void)
//
//@end

@interface JPullDownMenu : UIView

/*!@brief 分别为:选中cell的text、cell的index、cell对应的Button。 */
@property (nonatomic) void (^handleSelectDataBlock) (NSString *selectTitle, NSUInteger selectIndex ,NSUInteger selectButtonTag);

@property (nonatomic) UIButton  *tempButton;

/*!@brief 二维数组，存放每个Button对应下的TableView数据。。 */
@property (nonatomic) NSMutableArray *menuDataArray;

- (instancetype)initWithFrame:(CGRect)frame menuTitleArray:(NSArray *)titleArray;

/*!@brief 数据源如果改变的话需调用此方法刷新数据。 */
-(void)setDefauldSelectedCell;

@end



@interface downMenuCell : UITableViewCell

@property (nonatomic) UIImageView  *selectImageView;

@property (nonatomic) BOOL  isSelected;

@end