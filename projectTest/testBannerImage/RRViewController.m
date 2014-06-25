//
//  RRViewController.m
//  testBannerImage
//
//  Created by Remi Robert on 25/06/14.
//  Copyright (c) 2014 remirobert. All rights reserved.
//

#import "RRViewController.h"
#import "UIImageView+ColorAverageBanner.h"

@interface RRViewController ()
@property (nonatomic, strong) UIScrollView *scrollView;
@end

@implementation RRViewController

- (void) addPictures {
    UIImageView *v1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1"]];
    v1.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width);

    [v1 addBannerImage];
    [v1 getBannerView].textBanner.text = @"";

    UIImageView *v2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"2"]];
    v2.frame = CGRectMake(0, self.view.frame.size.width, self.view.frame.size.width, self.view.frame.size.width);

    [v2 addBannerImage];
    [v2 getBannerView].textBanner.text = @"Taj Mahal";
    
    UIImageView *v3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"3"]];
    v3.frame = CGRectMake(0, self.view.frame.size.width * 2, self.view.frame.size.width, self.view.frame.size.width);

    [v3 addBannerImage];
    [v3 getBannerView].textBanner.text = @"";

    UIImageView *v4 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"4"]];
    v4.frame = CGRectMake(0, self.view.frame.size.width * 3, self.view.frame.size.width, self.view.frame.size.width);

    [v4 addBannerImage];
    [v4 getBannerView].textBanner.text = @"Elephant";
    
    UIImageView *v5 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"5"]];
    v5.frame = CGRectMake(0, self.view.frame.size.width * 4, self.view.frame.size.width, self.view.frame.size.width);

    [v5 addBannerImage];
    [v5 getBannerView].textBanner.text = @"Mysore Palace";

    [_scrollView addSubview:v1];
    [_scrollView addSubview:v2];
    [_scrollView addSubview:v3];
    [_scrollView addSubview:v4];
    [_scrollView addSubview:v5];

    
    v1.contentMode = UIViewContentModeScaleAspectFit;
    v2.contentMode = UIViewContentModeScaleAspectFit;
    v3.contentMode = UIViewContentModeScaleAspectFit;
    v4.contentMode = UIViewContentModeScaleAspectFit;
    v5.contentMode = UIViewContentModeScaleAspectFit;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    _scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    
    _scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.width * 5);
    _scrollView.showsVerticalScrollIndicator = NO;
    
    [self.view addSubview:_scrollView];
    [self addPictures];
}

@end
