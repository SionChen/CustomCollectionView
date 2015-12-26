//
//  CustomCollectionViewFlowLayout.h
//  CustomFlowLayoutDemo
//
//  Created by 王博 on 15/6/12.
//  Copyright (c) 2015年 wangbo. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CustomCollectionViewFlowLayoutDelegate <NSObject>

// 返回indexPath制定item的大小
- (CGSize)sizeForItemWithIndexPath:(NSIndexPath *)indexPath;

@end

@interface CustomCollectionViewFlowLayout : UICollectionViewFlowLayout

@property (nonatomic, weak) id<CustomCollectionViewFlowLayoutDelegate> delegate;
// 总列数
@property (nonatomic, assign) NSInteger columnCount;

@end
