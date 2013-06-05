//
//  MTBtnLb.m
//  JL
//
//  Created by mobilenow03 on 12/12/6.
//  Copyright (c) 2012年 mobilenow03. All rights reserved.
//

#import "MTBtnLb.h"


@interface MTBtnLb ()
{
    BOOL _isSelectEffectEnabled;
    BOOL _isInitFromCoder;
}
@end
@implementation MTBtnLb

#define kMaskTag 1011

@synthesize _lbText,_isSelected;
@synthesize model;


-(void)dealloc
{
    self.model = nil;
    self._lbText = nil;
    [super dealloc];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(id)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        _isInitFromCoder = YES;
    }
    return self;
}
-(id)initWithAddSubLb:(CGRect)rect
{
    if (self = [super initWithFrame:rect])
    {
        self._lbText = [[[UILabel alloc] initWithFrame:(CGRect){0,0,rect.size}] autorelease];
        self._lbText.textAlignment = NSTextAlignmentCenter;
        self._lbText.backgroundColor = [UIColor clearColor];
        [self addSubview:self._lbText];    
    }
    return self;
}

-(void)enableSelectEffect
{
    _isSelectEffectEnabled = YES;
}
-(void)set_isSelected:(BOOL)isSelected
{
    
    _isSelected = isSelected;

}
//-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
//{
//    UITouch* touch = [[event allTouches] anyObject];
//    CGPoint pos = [touch locationInView:[[UIApplication sharedApplication] keyWindow]];
//    NSLog(@"pos:%@",NSStringFromCGPoint(pos));
//}
@end
