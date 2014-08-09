//
//  NSObject+AssociatedObjects.h
//  MyPrivateLibs
//
//  Created by JUE DUKE on 14-8-8.
//  Copyright (c) 2014年 Wing-Of-War. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (AssociatedObjects)
- (void)associateValue:(id)value withKey:(void *)key;
- (id)associatedValueForKey:(void *)key;
@end
