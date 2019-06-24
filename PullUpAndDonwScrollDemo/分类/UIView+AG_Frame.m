//
//  UIView+AG_Frame.m
//  JDDemo
//
//  Created by AlexGao on 2019/6/24.
//  Copyright © 2019 AlexGao. All rights reserved.
//

#import "UIView+AG_Frame.h"

@implementation UIView (AG_Frame)
- (void)setAg_x:(CGFloat)eoc_x
{
    CGRect frame = self.frame;
    frame.origin.x = eoc_x;
    self.frame = frame;
}

- (CGFloat)ag_x
{
    return self.frame.origin.x;
}

- (void)setAg_y:(CGFloat)eoc_y
{
    CGRect frame = self.frame;
    frame.origin.y = eoc_y;
    self.frame = frame;
}

- (CGFloat)ag_y
{
    return self.frame.origin.y;
}

- (void)setAg_width:(CGFloat)eoc_width
{
    CGRect frame = self.frame;
    frame.size.width = eoc_width;
    self.frame = frame;
}

- (CGFloat)ag_width
{
    return self.frame.size.width;
}

- (void)setAg_height:(CGFloat)eoc_height
{
    CGRect frame = self.frame;
    frame.size.height = eoc_height;
    self.frame = frame;
}

- (CGFloat)ag_height
{
    return self.frame.size.height;
}

- (void)setAg_origin:(CGPoint)eoc_origin
{
    CGRect frame = self.frame;
    frame.origin = eoc_origin;
    self.frame = frame;
}

- (CGPoint)ag_origin
{
    return self.frame.origin;
}

- (void)setAg_size:(CGSize)eoc_size
{
    CGRect frame = self.frame;
    frame.size = eoc_size;
    self.frame = frame;
}

- (CGSize)ag_size
{
    return self.frame.size;
}

- (CGFloat)eoc_bottomY
{
    return self.ag_y+self.ag_height;
}

@end
