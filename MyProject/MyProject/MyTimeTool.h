//
//  MyTimeTool.h
//  MyProject
//
//  Created by JUE DUKE on 14-8-8.
//  Copyright (c) 2014年 JUE DUKE. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyTimeTool : NSObject

+ (NSDate *)rfc3339DateFormatterParse:(NSString *)string isExtend:(BOOL)isExtend;
+ (NSString *)rfc3339DateFormatterGenerate:(NSDate *)date isExtend:(BOOL)isExtend;

@end
