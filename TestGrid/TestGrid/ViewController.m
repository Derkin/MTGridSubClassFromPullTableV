//
//  ViewController.m
//  TestGrid
//
//  Created by zhenai on 13-6-3.
//  Copyright (c) 2013年 zhenai. All rights reserved.
//

#import "ViewController.h"
#import "PinDaoGridItem.h"
#import "ShouBoModel.h"
#import "MTCreateUi.h"


@interface ViewController ()

@property(nonatomic,retain) NSMutableArray* _items;

@end

@implementation ViewController
@synthesize _tbV,_items;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

static int indexInc = 0;
- (IBAction)btnClikced:(id)sender {
    self._items = [NSMutableArray array];
    int count = 12;
    for (int i = 1; i<= count; i++) {
        NSString* text = @(i).stringValue;
        ShouBoModel* model = [[ShouBoModel alloc] init];
        model.fee = text;
        model.FilmName = @"电影名字";
        [self._items addObject:model];
        [model release];
    }
    [self._tbV reloadData];
    [self performSelector:@selector(testReloadDelayAgain) withObject:nil afterDelay:0.3];
}

-(void)testReloadDelayAgain
{
    [self._tbV reloadData];
}
- (void)dealloc {
    [_tbV release];
    [super dealloc];
}

#pragma mark -
#pragma mark ---- Delegate:Grid方面
- (CGFloat) gridView:(UIGridView *)grid widthForColumnAt:(int)columnIndex
{
	return 108;
}

- (CGFloat) gridView:(UIGridView *)grid heightForRowAt:(int)rowIndex
{
    CGFloat heigh = 138;
	return heigh;
}

- (NSInteger) numberOfColumnsOfGridView:(UIGridView *) grid
{
    NSInteger nums = 3;
    return nums;
}


- (NSInteger) numberOfCellsOfGridView:(UIGridView *) grid
{// 填入所有数据的数量
	return self._items.count;
}

- (UIGridViewCell *) gridView:(UIGridView *)grid cellForRowAt:(int)rowIndex AndColumnAt:(int)columnIndex
{
    UIGridViewCell* cellReturn = nil;
    PinDaoGridItem *cell = (PinDaoGridItem *)[grid dequeueReusableCell];
    
    if (cell == nil) {
        cell = [[[PinDaoGridItem alloc] init] autorelease];
        cell.thumbnail.contentMode = UIViewContentModeScaleAspectFit;
    }
    cellReturn = cell;
    ShouBoModel* model = [self._items objectAtIndex:rowIndex*3+columnIndex];
    cell._modelData = model;
    
    // 影片图片和文字数据显示
    cell.label.text = model.FilmName;
    cell.thumbnail.image = nil;
    [cell.thumbnail setImage:nil];
    
    // 电影价格
    UIView* feeV =[MTCreateUi MTViewByRect:(CGRect){10,90,60,18} Color:[UIColor clearColor] Alpha:1];
    feeV.tag = 113;
    feeV.userInteractionEnabled = NO;
    feeV.hidden = YES;
    
    
    UIImageView* feeImgV = [MTCreateUi MTImageViewByImageName:@"price.png"];
    feeImgV.frame = (CGRect){0,0,30,18};
    feeImgV.userInteractionEnabled = NO;
    [feeV addSubview:feeImgV];
    
    
    UILabel* label = [MTCreateUi MTLabelByFrame:(CGRect){0,0,feeV.frame.size.width-5,feeV.frame.size.height}];
    
    label.tag = 12;
    label.textColor = [UIColor blackColor];
    label.backgroundColor = [UIColor clearColor];
    [feeV addSubview:label];
    
    [cell addSubview:feeV];
    
    NSLog(@"开始");
    NSLog(@"fee :%@",model.fee);
    if (model.fee && ![model.fee isEqualToString:@"0"] && model.fee.intValue%2==0) {
        feeV.hidden = NO;
        UILabel* feeLb = (UILabel*)[feeV viewWithTag:12];
        NSString* fee = [NSString stringWithFormat:@"￥%@",model.fee];
        feeLb.text = fee;
    }else
    {
        UILabel* feeLb = (UILabel*)[feeV viewWithTag:12];
        NSString* fee = [NSString stringWithFormat:@"￥%@",model.fee];
        feeLb.text = fee;
        NSLog(@"fee :%@",model.fee);
        feeV.hidden = YES;
    }
	return cellReturn;
}

- (void) gridView:(UIGridView *)grid item:(PinDaoGridItem*)sender didSelectRowAt:(int)rowIndex AndColumnAt:(int)colIndex
{
    int numsOfRowItem = 3;
    ShouBoModel* model = [self._items objectAtIndex:rowIndex*numsOfRowItem+colIndex];
    
	
    
}

#pragma mark - 上拉刷新控制
- (void) refreshTable
{
    /*
     
     Code to actually refresh goes here.
     
     */
    self->_tbV.pullLastRefreshDate = [NSDate date];
    self->_tbV.pullTableIsRefreshing = NO;
}

- (void) loadMoreDataToTable
{
    /*
     
     Code to actually load more data goes here.
     
     */
    self->_tbV.pullTableIsLoadingMore = NO;
}



#pragma mark --- PullTableViewDelegate

- (void)pullTableViewDidTriggerRefresh:(PullTableView *)pullTableView
{
}

- (void)pullTableViewDidTriggerLoadMore:(PullTableView *)pullTableView
{
}
@end
