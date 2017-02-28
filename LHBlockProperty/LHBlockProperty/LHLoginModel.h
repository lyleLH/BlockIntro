//
//  LHNetTool.h
//  LHBlockProperty
//
//  Created by lyleKP on 2017/2/28.
//  Copyright © 2017年 lyle. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^LHNetResponseBlock)(NSDictionary *response) ;

@interface LHLoginModel : NSObject

@property (nonatomic,copy)LHNetResponseBlock loginResponse;


+ (void)logOutServerWithUsername:(NSString*)usernane andPassword:(NSString*)password response:(LHNetResponseBlock)response;
    

- (void)loginAPIServerWithUsername:(NSString*)usernane andPassword:(NSString*)password;

@end
