//
//  MDSegmentView.h
//  MDSegmentView
//
//  Created by 李永杰 on 2019/5/22.
//  Copyright © 2019 liyongjie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MDSegmentView : UIView

@property (nonatomic, strong) NSArray *items;
// UI
@property (nonatomic, strong) UICollectionView      *collectionView;
// 配置项
@property (nonatomic, assign) CGFloat   itemWidth;

@property (nonatomic, assign) CGFloat   lineWidth;

@property (nonatomic, strong) UIColor   *normalTitleColor;

@property (nonatomic, strong) UIColor   *selectedTitleColor;

@property (nonatomic, strong) UIColor   *normalBackgroundColor;

@property (nonatomic, strong) UIColor   *selectedBackgroundColor;

@property (nonatomic, assign) CGFloat   normalFontSize;

@property (nonatomic, assign) CGFloat   selectedFontSize;

@property (nonatomic, strong) UIColor   *backgroundColor;

@property (nonatomic, assign) CGFloat   innerSpace;

// 设置选中
-(void)setSelectedIndex:(NSInteger )index;

@end

@interface MDSegmentView (UICollectionView)<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@end


@interface MDSegmentViewCell : UICollectionViewCell

@property (nonatomic, assign) BOOL  isSelected;

@property (nonatomic, strong) UILabel   *titleLabel;

@end
