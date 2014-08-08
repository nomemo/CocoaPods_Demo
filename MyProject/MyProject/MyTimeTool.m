//
//  MyTimeTool.m
//  MyProject
//
//  Created by JUE DUKE on 14-8-8.
//  Copyright (c) 2014年 JUE DUKE. All rights reserved.
//

#import "MyTimeTool.h"

@implementation MyTimeTool

#pragma mark - RFC3339 Date Convert

+ (NSString *)rfc3339DateFormatterGenerate:(NSDate *)date isExtend:(BOOL)isExtend
{
    static NSDateFormatter *dateFormatter = nil;
    if (!dateFormatter) {
        dateFormatter = [[NSDateFormatter alloc] init];
        NSLocale *enUSPOSIXLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        [dateFormatter setLocale:enUSPOSIXLocale];
        [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
        [dateFormatter setDateFormat:@"yyyyMMdd'T'HHmmss'Z'"];
    }
    //    NSLog(@"rfc3339DateFormatterGenerate is %@, originDate is %@",[dateFormatter stringFromDate:date] , date);
    return [dateFormatter stringFromDate:date];
}


+ (NSDateFormatter *)getRfc3339ExtendFormatter
{
    static NSDateFormatter *rfc3339ExtendFormatter = nil;
    if (!rfc3339ExtendFormatter) {
        rfc3339ExtendFormatter = [[NSDateFormatter alloc] init];
        NSLocale *enUSPOSIXLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        [rfc3339ExtendFormatter setLocale:enUSPOSIXLocale];
        [rfc3339ExtendFormatter setDateFormat:@"yyyy'-'MM'-'dd'T'HH':'mm':'ss'.'SSS'Z'"];
        [rfc3339ExtendFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    }
    return rfc3339ExtendFormatter;
}

+ (NSDateFormatter *)getRfc3339ShortFormatter
{
    static NSDateFormatter *rfc3339ShortFormatter = nil;
    if (!rfc3339ShortFormatter) {
        rfc3339ShortFormatter = [[NSDateFormatter alloc] init];
        NSLocale *enUSPOSIXLocale = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
        [rfc3339ShortFormatter setLocale:enUSPOSIXLocale];
        [rfc3339ShortFormatter setDateFormat:@"yyyyMMdd'T'HHmmss'Z'"];
        [rfc3339ShortFormatter setTimeZone:[NSTimeZone timeZoneForSecondsFromGMT:0]];
    }
    return rfc3339ShortFormatter;    
}

+ (NSDate *)rfc3339DateFormatterParse:(NSString *)string isExtend:(BOOL)isExtend
{
    NSDateFormatter *parseFormatter = nil;
    if (isExtend) {
        parseFormatter = [self getRfc3339ExtendFormatter];
    }else
    {
        parseFormatter = [self getRfc3339ShortFormatter];
    }
    NSDate *result = [parseFormatter dateFromString:string];
    //    NSLog(@"rfc3339DateFormatterParse result is %@, origin stirng is %@", result, string );
    return result;
}

@end
