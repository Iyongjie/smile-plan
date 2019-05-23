//
//  MDSegmentView.m
//  MDSegmentView
//
//  Created by 李永杰 on 2019/5/22.
//  Copyright © 2019 liyongjie. All rights reserved.
//

#import "MDSegmentView.h"
#import "NSString+MDAdditional.h"

@interface MDSegmentView ()

@property (nonatomic, strong) UIView                *contentView;

@end

@implementation MDSegmentView

-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self addSubview:self.contentView];
        [self.contentView addSubview:self.collectionView];
        
        [self initData];
    }
    return self;
}
-(void)layoutSubviews {
    [super layoutSubviews];
    self.contentView.frame = self.bounds;
    self.collectionView.frame = self.contentView.bounds;
}
#pragma mark 初始化数据
-(void)initData {
    
    _itemWidth               = 50;
    _lineWidth               = 50;
    _innerSpace              = 0;
    _normalFontSize          = 12;
    _selectedFontSize        = 14;
    _normalTitleColor        = [UIColor blackColor];
    _selectedTitleColor      = [UIColor redColor];
    _normalBackgroundColor   = [UIColor clearColor];
    _selectedBackgroundColor = [UIColor clearColor];
    _backgroundColor         = [UIColor whiteColor];
    
}
-(void)refreshUI {
    
}

#pragma mark public
-(void)setSelectedIndex:(NSInteger)index {
    NSLog(@"选中，位移");
}
#pragma mark lazy
-(UIView *)contentView {
    if (!_contentView) {
        _contentView = [UIView new];
    }
    return _contentView;
}

-(UICollectionView *)collectionView {
    if (!_collectionView) {
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
        layout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
        _collectionView = [[UICollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:layout];
        _collectionView.delegate = (id<UICollectionViewDelegate>) self;
        _collectionView.dataSource = (id<UICollectionViewDataSource>)self;
        [_collectionView registerClass:[MDSegmentViewCell class] forCellWithReuseIdentifier:@"MDSegmentViewCell"];
        _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.showsHorizontalScrollIndicator = NO;
        _collectionView.contentInsetAdjustmentBehavior = UIScrollViewContentInsetAdjustmentNever;
    }
    return _collectionView;
}

@end

@implementation MDSegmentView (UICollectionView)


- (nonnull __kindof UICollectionViewCell *)collectionView:(nonnull UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    MDSegmentViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"MDSegmentViewCell" forIndexPath:indexPath];
    cell.contentView.backgroundColor = [UIColor yellowColor];
    cell.titleLabel.text = self.items[indexPath.row];
    return cell;
}

- (NSInteger)collectionView:(nonnull UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.items.count;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"点一下，选中，位移%ld",indexPath.row);
}

-(CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat height = self.frame.size.height;
    return CGSizeMake(self.itemWidth, height);
}
-(CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    return self.innerSpace;
}
@end


@implementation MDSegmentViewCell
-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self.contentView addSubview:self.titleLabel];
    }
    return self;
}
-(void)layoutSubviews {
    [super layoutSubviews];
    self.titleLabel.frame = self.contentView.bounds;
}
// 设置选中状态
-(void)setIsSelected:(BOOL)isSelected {
    _isSelected = isSelected;
}

-(UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [UILabel new];
    }
    return _titleLabel;
}

@end
