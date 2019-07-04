//
//  ZPPerson.m
//  Super
//
//  Created by 赵鹏 on 2019/7/3.
//  Copyright © 2019 赵鹏. All rights reserved.
//

#import "ZPPerson.h"

@implementation ZPPerson

- (void)run
{
    NSLog(@"%s", __func__);
}

//当方法找不到的时候会调用这个方法，防止程序崩溃。
- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
{
    //本来能调用的方法
    if ([self respondsToSelector:aSelector])
    {
        return [super methodSignatureForSelector:aSelector];
    }
    
    //找不到的方法
    return [NSMethodSignature signatureWithObjCTypes:"v@:"];
}

//当方法找不到的时候会调用这个方法，在这个方法里面把错误信息上传到服务器。
- (void)forwardInvocation:(NSInvocation *)anInvocation
{
    NSLog(@"找不到%@方法", NSStringFromSelector(anInvocation.selector));
}

@end
