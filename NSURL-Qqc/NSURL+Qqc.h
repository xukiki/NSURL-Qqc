//
//  NSURL+Qqc.h
//  QqcFramework
//
//  Created by mahailin on 15/8/7.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  NSURL类别
 */
@interface NSURL (Qqc)

/**
*  根据给定的url以及参数字典, 生成NSURL类的实例
*
*  @param urlString URL字符串
*  @param paramDict 参数字典
*
*  @return 生成NSURL类的实例
*/
+ (id)urlWithString:(NSString *)urlString paramDictionary:(NSDictionary *)paramDict;

/**
 *  根据给定的url以及参数字典, 生成NSURL类的实例
 *
 *  @param urlString URL字符串
 *  @param paramDict 参数字典
 *
 *  @return 生成NSURL类的实例
 */
- (id)initWithString:(NSString *)urlString paramDictionary:(NSDictionary *)paramDict;

@end
