//
//  ViewController.m
//  MDSegmentView
//
//  Created by 李永杰 on 2019/5/22.
//  Copyright © 2019 liyongjie. All rights reserved.
//

#import "ViewController.h"
#import "MDSegmentView.h"
#import "NSString+MDAdditional.h"

#define SCREENSIZE  [UIScreen mainScreen].bounds.size

@interface ViewController ()

@property (nonatomic, strong) MDSegmentView *segmentView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.segmentView.items = @[@"韩信",@"刘邦",@"项羽"];
    [self.view addSubview:self.segmentView];
    
    _segmentView.itemWidth = 100;

    
    
}
-(MDSegmentView *)segmentView {
    if (!_segmentView) {
        _segmentView = [[MDSegmentView alloc]initWithFrame:CGRectMake(0, 100, SCREENSIZE.width, 100)];
    }
    return _segmentView;
}
@end
