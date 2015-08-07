//
//  NumberField.m
//  ExamineThePhoneNumber
//
//  Created by 叶永长 on 8/7/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "NumberField.h"

@implementation NumberField

-(instancetype) initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.placeholder = @"请输入手机号";
        self.textColor = [UIColor blackColor];
        self.font = [UIFont systemFontOfSize:13];
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = 5;
        self.layer.borderColor = [UIColor grayColor].CGColor;
        self.layer.borderWidth = 0.5;
        
        
        
        
        
    }
    return self;
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
