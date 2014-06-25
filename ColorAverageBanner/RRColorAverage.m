//
//  RRColorAverage.m
//  testBannerImage
//
//  Created by Remi Robert on 25/06/14.
//  Copyright (c) 2014 remirobert. All rights reserved.
//

#import "RRColorAverage.h"

@implementation RRColorAverage

+ (UIColor *) calcAverageColor:(NSMutableArray *)colors {
    UIColor *currentColor;
    CGFloat redColor, greenColor, blueColor = 0.0;
    CGFloat tmpRedColor, tmpGreenColor, tmpBlueColor = 0.0;
    
    for (currentColor in colors) {
        [currentColor getRed:&tmpRedColor
                       green:&tmpGreenColor
                        blue:&tmpBlueColor
                       alpha:nil];
        redColor += tmpRedColor;
        blueColor += tmpBlueColor;
        greenColor += tmpGreenColor;
    }
    return ([UIColor colorWithRed:redColor / (float)[colors count]
                            green:greenColor / (float)[colors count]
                             blue:blueColor / (float)[colors count]
                            alpha:0.85]);
}

+ (UIColor *) colorAverageWithImage:(UIImage *)image {
    int x, y = 0;
    int currentPixel = 0;
    UInt8 *dataPixel;
    NSMutableArray *colors;
    int ratioX, ratioY = 0;
    
    colors = [[NSMutableArray alloc] init];
    ratioX = CGImageGetWidth(image.CGImage) * 0.50;
    ratioY = CGImageGetHeight(image.CGImage) * 0.50;
    
    for (y = 0; y < CGImageGetHeight(image.CGImage); y += ratioY) {
        for (x = 0; x < CGImageGetWidth(image.CGImage); x += ratioX) {
            currentPixel = ((image.size.width  * y) + x ) * 4;
            CFDataRef pixelData = CGDataProviderCopyData(CGImageGetDataProvider(image.CGImage));
            dataPixel = (UInt8 *)CFDataGetBytePtr(pixelData);
            
            [colors addObject:[UIColor colorWithRed:dataPixel[currentPixel] / 255.0
                                              green:dataPixel[currentPixel + 1] / 255.0
                                               blue:dataPixel[currentPixel + 2] / 255.0
                                              alpha:dataPixel[currentPixel + 3] / 255.0]];
            CFRelease(pixelData);
        }
    }
    return ([self calcAverageColor:colors]);
}

@end
