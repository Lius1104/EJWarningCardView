//
//  ViewController.m
//  EJWarningCardView
//
//  Created by 刘爽 on 2020/2/10.
//  Copyright © 2020 刘爽. All rights reserved.
//

#import "ViewController.h"
#import "EJWarningCardView.h"

@interface ViewController ()<EJWarningCardViewDelegate>

@property (nonatomic, strong) EJWarningCardView * warningView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"更多" style:UIBarButtonItemStyleDone target:self action:@selector(handleClickRightItem)];
}

#pragma mark - action
- (void)handleClickRightItem {
    EJWarningCardView * warningView = [[EJWarningCardView alloc] initWithTitleArray:@[@"item 1", @"item 2"] imageArray:nil AtPoint:CGPointMake(88, CGRectGetWidth(self.view.frame) - 10) AndSize:CGSizeMake(100, 88) EdgeInset:UIEdgeInsetsZero delegate:self];
    _warningView = warningView;
    [_warningView show];
}

@end
