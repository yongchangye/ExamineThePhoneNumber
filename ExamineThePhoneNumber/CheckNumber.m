//
//  CheckNumber.m
//  ExamineThePhoneNumber
//
//  Created by 叶永长 on 8/7/15.
//  Copyright (c) 2015 YYC. All rights reserved.
//

#import "CheckNumber.h"

@implementation CheckNumber
typedef enum {
    /**
     *  成功
     */
    LoginCheckErrorSuccess=1,
    /**
     *  手机号非法
     */
    LoginCheckErrorPhoneNumberInvalidate,
    /**
     *  手机号空
     */
    LoginCheckErrorPhoneNumberEmpty,
    /**
     *  密码格式非法
     */
    LoginCheckErrorPasswordInvalidate,
    /**
     *  密码为空
     */
    LoginCheckErrorPasswordEmpty
} LoginCheckError;


+ (int)checkPhoneNumber:(NSString *)number
{
    if (number == nil || number.length==0)
    {
        return LoginCheckErrorPhoneNumberEmpty;
    }
    NSError *regularExError = NULL;
    NSRegularExpression *regularexpression = [NSRegularExpression regularExpressionWithPattern:@"^(13[0-9]|14[0-9]|15[0-9]|18[0-9]|17[0-9])[0-9]{8}$" options:NSRegularExpressionCaseInsensitive error:&regularExError];
    NSUInteger numberofMatch = [regularexpression numberOfMatchesInString:number
                                                                  options:NSMatchingReportProgress
                                                                    range:NSMakeRange(0, number.length)];
    if(numberofMatch <= 0)
    {
        return LoginCheckErrorPhoneNumberInvalidate;
    }
    
    return LoginCheckErrorSuccess;
}
@end
