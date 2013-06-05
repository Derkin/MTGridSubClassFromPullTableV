//
//  MTCreateUi.h
//  
//  创建UI
//  Created by  on 12-3-16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@class NMCustomLabel;

@interface MTCreateUi : NSObject
+(UILabel*)MTLabelByFrame:(CGRect)frame;
+(UIImageView*)MTImageViewByImageName:(NSString*)imageName;
+(UIButton*)MTButtonByImage:(NSString*)imgName tar:(id)target sel:(SEL)sel;

+(UIButton*)MTButtonByImage:(NSString*)imgName tar:(id)target sel:(SEL)sel BtnType:(UIButtonType)btnType;
#pragma mark ----创建view
+(UIButton*)MTViewByRect:(CGRect)rect Color:(UIColor*)color Alpha:(float)alp;
@end
