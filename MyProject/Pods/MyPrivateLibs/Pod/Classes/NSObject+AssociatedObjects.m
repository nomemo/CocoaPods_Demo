//
//  NSObject+AssociatedObjects.m
//  MyPrivateLibs
//
//  Created by JUE DUKE on 14-8-8.
//  Copyright (c) 2014年 Wing-Of-War. All rights reserved.
//

#import "NSObject+AssociatedObjects.h"
#import <objc/runtime.h>
@implementation NSObject (AssociatedObjects)
- (void)associateValue:(id)value withKey:(void *)key
{
    objc_setAssociatedObject(self, key, value, OBJC_ASSOCIATION_RETAIN);
}
- (id)associatedValueForKey:(void *)key
{
    return objc_getAssociatedObject(self, key);
}
@end
