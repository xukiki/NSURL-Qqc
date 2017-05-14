//
//  NSURL+Qqc.m
//  QqcFramework
//
//  Created by mahailin on 15/8/7.
//  Copyright (c) 2015年 admin. All rights reserved.
//

#import "NSURL+Qqc.h"
#import "NSArray+Qqc.h"
#import "NSString+Qqc.h"

@implementation NSURL (Qqc)

/**
 *  根据给定的url以及参数字典, 生成NSURL类的实例
 *
 *  @param urlString URL字符串
 *  @param paramDict 参数字典
 *
 *  @return 生成NSURL类的实例
 */
+ (id)urlWithString:(NSString *)urlString paramDictionary:(NSDictionary *)paramDict;
{
    return [[[self class] alloc] initWithString:urlString paramDictionary:paramDict];
}

/**
 *  根据给定的url以及参数字典, 生成NSURL类的实例
 *
 *  @param urlString URL字符串
 *  @param paramDict 参数字典
 *
 *  @return 生成NSURL类的实例
 */
- (id)initWithString:(NSString *)urlString paramDictionary:(NSDictionary *)paramDict
{
    if (urlString == nil)
    {
        return nil;
    }
    
    if (paramDict == nil || [paramDict count] == 0)
    {
        return [self initWithString:urlString];
    }
    
    NSMutableString *result = [NSMutableString stringWithString:urlString];
    NSString *endString = @"";
    
    //判断是否包含“#”
    if ([result containsString:@"#"])
    {
        NSArray *resultArray = [result componentsSeparatedByString:@"#"];
        result = [resultArray safeGetObjectAtIndex:0];
        endString = [NSString stringWithFormat:@"#%@", [resultArray safeGetObjectAtIndex:1]];
    }
    
    [result appendString:[result containsString:@"?"] ? @"&" : @"?"];
    
    NSMutableArray *paramsArray = [[NSMutableArray alloc] initWithCapacity:[paramDict count]];
    NSEnumerator *enumerator = [paramDict keyEnumerator];
    id key;
    
    while ((key = [enumerator nextObject]))
    {
        [paramsArray addObject:[NSString stringWithFormat:@"%@=%@",
                                [key description],
                                [[[paramDict objectForKey:key] description] stringByUrlEncoding]]];
    }
    
    [result appendString:[paramsArray componentsJoinedByString:@"&"]];
    [result appendString:endString];
    return [self initWithString:result];
}

@end
