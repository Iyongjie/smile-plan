//
//  NSString+MDAdditional.h
//  MDSegmentView
//
//  Created by 李永杰 on 2019/5/23.
//  Copyright © 2019 liyongjie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (MDAdditional)

/**
 计算字符串宽度，需要指定高度和字体大小

 @param height 高度
 @param fontSize 字体大小
 @return 宽度
 */
-(CGFloat)widthWithHeight:(CGFloat)height fontSize:(CGFloat)fontSize;

@end

NS_ASSUME_NONNULL_END
