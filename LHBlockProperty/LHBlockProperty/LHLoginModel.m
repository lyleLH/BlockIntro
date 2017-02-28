//
//  LHNetTool.m
//  LHBlockProperty
//
//  Created by lyleKP on 2017/2/28.
//  Copyright © 2017年 lyle. All rights reserved.
//

#import "LHLoginModel.h"

@implementation LHLoginModel


+ (void)logOutServerWithUsername:(NSString*)usernane andPassword:(NSString*)password response:(LHNetResponseBlock)response {
    //请求服务器的登出接口，获得相应
    //......调用Block，但是Block的实现在别处（控制器中）
    //...传递响应
    NSDictionary * result = @{@"code":@"1",@"msg":@"logout success!"};
    response(result);
}

- (void)loginAPIServerWithUsername:(NSString*)usernane andPassword:(NSString*)password {
    
    //请求服务器的登陆接口，获得相应
    //......调用Block，但是Block的实现在别处（控制器中）
    //...传递响应
    NSDictionary * response = @{@"code":@"1",@"msg":@"login success!"};
    if(_loginResponse){
        _loginResponse(response);
    }
}

@end
