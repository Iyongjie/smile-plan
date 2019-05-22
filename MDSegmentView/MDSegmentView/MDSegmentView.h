//
//  MDSegmentView.h
//  MDSegmentView
//
//  Created by 李永杰 on 2019/5/22.
//  Copyright © 2019 liyongjie. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MDSegmentView : UIView
// 数据
@property (nonatomic, strong) NSArray *items;

@property (nonatomic, assign) CGFloat   lineWidth;

// UI
@property (nonatomic, strong) UICollectionView      *collectionView;

@property (nonatomic, strong) UIColor   *normalTitleColor;

@property (nonatomic, strong) UIColor   *selectedTitleColor;

-(void)setSelectedIndex:(NSInteger )index;

@end

@interface MDSegmentView (UICollectionView)<UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout>

@end


@interface MDSegmentViewCell : UICollectionViewCell

@property (nonatomic, assign) BOOL  isSelected;

@property (nonatomic, strong) UILabel   *titleLabel;

@end
