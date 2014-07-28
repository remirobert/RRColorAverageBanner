//
//  RRBannerImage.h
//  testBannerImage
//
//  Created by Remi Robert on 25/06/14.
//  Copyright (c) 2014 remirobert. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RRBannerImage : UIView

@property (nonatomic, assign, readonly) CGFloat redColor;
@property (nonatomic, assign, readonly) CGFloat greenColor;
@property (nonatomic, assign, readonly) CGFloat blueColor;

@property (nonatomic, strong) UILabel *textBanner;

- (id)initWithFrame:(CGRect)frame andColor:(UIColor *)color;

@end
