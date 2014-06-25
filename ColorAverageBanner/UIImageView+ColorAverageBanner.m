//
//  UIImageView+ColorAverageBanner.m
//  testBannerImage
//
//  Created by Remi Robert on 25/06/14.
//  Copyright (c) 2014 remirobert. All rights reserved.
//

#import "UIImageView+ColorAverageBanner.h"
#import "RRColorAverage.h"

static RRBannerImage *bannerView;

@implementation UIImageView (ColorAverageBanner)

- (RRBannerImage *) getBannerView {
    return (bannerView);
}

- (void) initBanner {
    CGFloat heightBanner = self.frame.size.height * 0.25;
    bannerView = [[RRBannerImage alloc] initWithFrame:CGRectMake(0,
                                                               self.frame.size.height - heightBanner,
                                                               self.frame.size.width, heightBanner)
                                           andColor:[RRColorAverage colorAverageWithImage:self.image]];
    [self addSubview:bannerView];
}

- (void) addBannerImage {
    [self initBanner];
    
}

@end
