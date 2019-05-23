//
//  NSString+MDAdditional.m
//  MDSegmentView
//
//  Created by 李永杰 on 2019/5/23.
//  Copyright © 2019 liyongjie. All rights reserved.
//

#import "NSString+MDAdditional.h"

@implementation NSString (MDAdditional)

-(CGFloat)widthWithHeight:(CGFloat)height fontSize:(CGFloat)fontSize {
    NSDictionary *dic = @{
                          NSFontAttributeName:[UIFont systemFontOfSize:fontSize]
                          };
    CGRect rect = [self boundingRectWithSize:CGSizeMake(0, height) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:dic context:nil];
    return rect.size.width;

}

@end
