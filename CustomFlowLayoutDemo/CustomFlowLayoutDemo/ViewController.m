//
//  ViewController.m
//  CustomFlowLayoutDemo
//
//  Created by 王博 on 15/6/12.
//  Copyright (c) 2015年 wangbo. All rights reserved.
//

#import "ViewController.h"
#import "CustomCollectionViewFlowLayout.h"

@interface ViewController () <UICollectionViewDataSource, CustomCollectionViewFlowLayoutDelegate>
@property (weak, nonatomic) IBOutlet CustomCollectionViewFlowLayout *customLayout;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.customLayout.columnCount = 2;
    self.customLayout.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 199;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell" forIndexPath:indexPath];
    UILabel * label = (UILabel *)[cell viewWithTag:888];
    if (!label) {
        label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
        label.tag = 888;
        [cell addSubview:label];
    }
    label.text = [NSString stringWithFormat:@"%ld", indexPath.row];
    
    return cell;
}

- (CGSize)sizeForItemWithIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake(100, (arc4random() % 100)+ 100);
}

@end
