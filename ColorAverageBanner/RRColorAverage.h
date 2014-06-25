//
//  RRColorAverage.h
//  testBannerImage
//
//  Created by Remi Robert on 25/06/14.
//  Copyright (c) 2014 remirobert. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RRColorAverage : NSObject

+ (UIColor *) calcAverageColor:(NSMutableArray *)colors;
+ (UIColor *) colorAverageWithImage:(UIImage *)image;

@end
