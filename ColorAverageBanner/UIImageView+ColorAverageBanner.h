//
//  UIImageView+ColorAverageBanner.h
//  testBannerImage
//
//  Created by Remi Robert on 25/06/14.
//  Copyright (c) 2014 remirobert. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RRBannerImage.h"

@interface UIImageView (ColorAverageBanner)

- (void) addBannerImage;
- (RRBannerImage *) getBannerView;

@end
