//
//  MTCreateUi.m
//  
//
//  Created by  on 12-3-16.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MTCreateUi.h"


@implementation MTCreateUi
#pragma mark ----创建Label
+(UILabel*)MTLabelByFrame:(CGRect)frame
{
    UILabel *lbltext=[[[UILabel alloc] initWithFrame:frame] autorelease];
    lbltext.backgroundColor=[UIColor clearColor];
    return lbltext;
}
#pragma mark ----创建ImageView
+(UIImageView*)MTImageViewByImageName:(NSString*)imageName
{
    UIImage *img=[UIImage imageNamed:imageName];
    UIImageView *imgView=[[[UIImageView alloc] initWithImage:img] autorelease];
    imgView.frame=CGRectMake(0, 0, img.size.width, img.size.height);
    return imgView;
}
#pragma mark ----创建Button
+(UIButton*)MTButtonByImage:(NSString*)imgName tar:(id)target sel:(SEL)sel
{
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    if (imgName) {
        UIImage *img=[UIImage imageNamed:imgName];
        btn.frame=CGRectMake(0,0,img.size.width,img.size.height);
        [btn setBackgroundImage:img forState:UIControlStateNormal];
    }
    if (sel) {
        [btn addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    }
    return btn;
}

+(UIButton*)MTButtonByImage:(NSString*)imgName tar:(id)target sel:(SEL)sel BtnType:(UIButtonType)btnType
{
    UIButton *btn=[UIButton buttonWithType:btnType];
    if (imgName) {
        UIImage *img=[UIImage imageNamed:imgName];
        btn.frame=CGRectMake(0,0,img.size.width,img.size.height);
        [btn setBackgroundImage:img forState:UIControlStateNormal];
    }
    if (sel) {
        [btn addTarget:target action:sel forControlEvents:UIControlEventTouchUpInside];
    }
    return btn;
}

#pragma mark ----创建view
+(UIView*)MTViewByRect:(CGRect)rect Color:(UIColor*)color Alpha:(float)alp
{
    UIView* aView =[[[UIView alloc] initWithFrame:rect] autorelease];
    aView.backgroundColor = color;
    aView.alpha = alp;
    return aView;
}


@end
