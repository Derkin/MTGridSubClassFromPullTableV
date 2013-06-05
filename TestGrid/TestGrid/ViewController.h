//
//  ViewController.h
//  TestGrid
//
//  Created by zhenai on 13-6-3.
//  Copyright (c) 2013年 zhenai. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIGridView.h"
#import "UIGridViewDelegate.h"

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIGridViewDelegate>
- (IBAction)btnClikced:(id)sender;

@property (retain, nonatomic) IBOutlet UIGridView *_tbV;
@end
