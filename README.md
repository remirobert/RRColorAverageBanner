ColorAverageBanner
==================

[![CI Status](http://img.shields.io/travis/remirobert/RRCustomPageController.svg?style=flat)](https://travis-ci.org/remirobert/RRCustomPageController)
[![Version](https://img.shields.io/cocoapods/v/RRCustomPageController.svg?style=flat)](http://cocoadocs.org/docsets/RRCustomPageController)
[![License](https://img.shields.io/cocoapods/l/RRCustomPageController.svg?style=flat)](http://cocoadocs.org/docsets/RRCustomPageController)
[![Platform](https://img.shields.io/cocoapods/p/RRCustomPageController.svg?style=flat)](http://cocoadocs.org/docsets/RRCustomPageController)

Allows you to add a banner to your images to display content or explanations. It goes very well with the image, since it uses the average of all pixels of the image color. 

The banner is a UIView containing a UILabel, but can theoretically do what you want!

Overview
========

![Alt text](https://raw.githubusercontent.com/remirobert/ColorAverageBanner/master/projectTest/record2.gif "Optional title")

Usage
=====

``` Objective-c
- (void) displayPicture {
    UIImageView *v1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1"]];
    v1.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width);

    [v1 addBannerImage];
    [v1 getBannerView].textBanner.text = @"content text";
    
    [self.view addSubView:v1];
  }
    
```
## Installation

RRCustomPageController is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

    pod "RRCustomPageController"

## Author

remirobert, remi.robert@epitech.eu

## License

RRCustomPageController is available under the MIT license. See the LICENSE file for more info.
