//
//  RRBannerImage.m
//  testBannerImage
//
//  Created by Remi Robert on 25/06/14.
//  Copyright (c) 2014 remirobert. All rights reserved.
//

#import "RRBannerImage.h"

@implementation RRBannerImage

- (id)initWithFrame:(CGRect)frame andColor:(UIColor *)color
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = color;
        [color getRed:&_redColor green:&_greenColor blue:&_blueColor alpha:nil];
        _textBanner = [[UILabel alloc] initWithFrame:CGRectMake(0, frame.size.height / 3,
                                                                frame.size.width, frame.size.height / 2)];
        _textBanner.textAlignment = NSTextAlignmentCenter;
        
        _textBanner.textColor = [UIColor colorWithRed:_redColor - 0.15
                                                green:_greenColor - 0.15
                                                 blue:_blueColor - 0.15
                                                alpha:0.75];
        
        
        _textBanner.text = @"salut";
        [self addSubview:_textBanner];
    }
    return self;
}

@end
