//
//  ViewController.m
//  LHBlockProperty
//
//  Created by lyleKP on 2017/2/28.
//  Copyright © 2017年 lyle. All rights reserved.
//

#import "ViewController.h"
#import "LHLoginModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    LHLoginModel * loginModel = [[LHLoginModel alloc]init];
    //先进行赋值，保证Block的实现代码不为空
    loginModel.loginResponse = ^(NSDictionary*response){
        //此处在控制器中来处理响应和完善业务逻辑
        NSLog(@"%@",response);
    };
    //loginAPIServerWithUsername方法中调用_loginResponse的时候有内省一次，所以Block调用的时候不能为空
    [loginModel loginAPIServerWithUsername:@"liuhao" andPassword:@"123456"];

    [LHLoginModel logOutServerWithUsername:@"liuhao" andPassword:@"123456" response:^(NSDictionary *response) {
        NSLog(@"%@",response);
    }];
    
    
}


@end
