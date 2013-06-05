//
//  MTBtnLb.h
//  JL
//
//  Created by mobilenow03 on 12/12/6.
//  Copyright (c) 2012年 mobilenow03. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MTBtnLb : UIButton

@property (nonatomic,retain) IBOutlet UILabel* _lbText;

@property (nonatomic) BOOL _isSelected;

@property(nonatomic,retain) id model;

-(id)initWithAddSubLb:(CGRect)rect;
-(void)enableSelectEffect;
@end
