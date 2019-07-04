//
//  ZPStudent.m
//  Super
//
//  Created by 赵鹏 on 2019/7/3.
//  Copyright © 2019 赵鹏. All rights reserved.
//

#import "ZPStudent.h"

@implementation ZPStudent

- (void)run
{
    [super run];
    
    NSLog(@"ZPStudent");
}

- (instancetype)init
{
    if (self = [super init])
    {
        NSLog(@"[self class] = %@", [self class]);  //ZPStudent
        NSLog(@"[self superclass] = %@", [self superclass]);  //ZPPerson
        
        NSLog(@"-----------------------------------");
        
        /**
         不管是[self class]还是[super class]，最后调用的都是NSObject类里面的class方法；
         [super class]这句代码的意思是super调用的消息接收者仍然是ZPStudent这个子类的对象，只不过是从它的父类ZPPerson开始查找class方法，所以下面代码的结果和上面的一致；
         [super superclass]同理。
         */
        NSLog(@"[super class] = %@", [super class]);  //ZPStudent
        NSLog(@"[super superclass] = %@", [super superclass]);  //ZPPerson
    }
    
    return self;
}

@end
