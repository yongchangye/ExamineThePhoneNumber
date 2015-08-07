//
//  ABErrorCodeDefine.h
//  AppWallet
//
//  Created by caijr on 12-6-14.
//  Copyright (c) 2012  Appconomy, Inc. All rights reserved.
//
#pragma mark login
/* login */
extern NSString *const kLoginCheckTextFieldErrorDomain;
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


