//
//  Cell.m
//  naivegrid
//
//  Created by Apirom Na Nakorn on 3/6/12.
//  Copyright 2012 __MyCompanyName__. All rights reserved.
//

#import "PinDaoGridItem.h"
#import <QuartzCore/QuartzCore.h>
#import "MTBtnLb.h"
#import "ShouBoModel.h"


@implementation PinDaoGridItem


@synthesize thumbnail;
@synthesize label;
@synthesize _modelData;

- (id)init {
	
    if (self = [super init]) {
		
        self.frame = CGRectMake(0, 0, 108, 138);
		
		[[NSBundle mainBundle] loadNibNamed:@"PinDaoGridItem" owner:self options:nil];
		
        [self addSubview:self.view];
	}
	
    return self;
	
}


- (void)dealloc {
    self._modelData = nil;
    [super dealloc];
}

@end
