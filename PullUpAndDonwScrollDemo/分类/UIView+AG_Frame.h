//
//  UIView+AG_Frame.h
//  JDDemo
//
//  Created by AlexGao on 2019/6/24.
//  Copyright © 2019 AlexGao. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (AG_Frame)
@property(nonatomic, assign)CGFloat ag_x;
@property(nonatomic, assign)CGFloat ag_y;
@property(nonatomic, assign)CGFloat ag_width;
@property(nonatomic, assign)CGFloat ag_height;
@property(nonatomic, assign)CGSize ag_size;
@property(nonatomic, assign)CGPoint ag_origin;
@property(nonatomic, assign)CGFloat ag_bottomY;
@end

NS_ASSUME_NONNULL_END
