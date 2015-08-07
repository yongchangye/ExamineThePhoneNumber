//
//  ViewController.m
//  ExamineThePhoneNumber
//
//  Created by 叶永长 on 8/7/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "ViewController.h"
#import "NumberField.h"
#import "CheckNumber.h"
#import "ABErrorCodeDefine.h"
@interface ViewController ()<UITextFieldDelegate>
{
    NumberField *Number;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    Number = [[NumberField alloc]initWithFrame:CGRectMake(20, 100, 200, 30)];
    Number.delegate =self;
    [self.view addSubview:Number];
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [Number resignFirstResponder];
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [Number resignFirstResponder];
    LoginCheckError code = [CheckNumber checkPhoneNumber:textField.text];
    if (code == LoginCheckErrorPhoneNumberEmpty) {
        Number.text = @"手机号不能为空";
    }else if (code == LoginCheckErrorPhoneNumberInvalidate){
        Number.text = @"手机号错误";
    }
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
