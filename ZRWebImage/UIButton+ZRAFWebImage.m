//
//  UIButton+ZRAFWebImage.m
//  ZRWebImageDemo
//
//  Created by rogue on 2019/1/11.
//  Copyright © 2019 rogue. All rights reserved.
//

#import "UIButton+ZRAFWebImage.h"
#import "UIButton+AFNetworking.h"
#import <ZRBaseObject/ZRMacro.h>
#import <ZRBaseObject/ZRInitView.h>

@implementation UIButton (ZRAFWebImage)

- (void)ZRAF_setImageForState:(UIControlState)state withURL:(NSString *)url {
    [self ZRAF_setImageForState:state withURL:url placeholderImage:nil];
}

- (void)ZRAF_setImageForState:(UIControlState)state withURL:(NSString *)url placeholderImage:(nullable NSString *)placeholderImage {
    if(ZR_StringIsEmpty(url)) {
        if(ZR_StringIsEmpty(placeholderImage)) {
            return;
        }
        [self setImage:newImage(placeholderImage) forState:UIControlStateNormal];
        return;
    }
    [self setImageForState:state withURL:[NSURL URLWithString:url] placeholderImage:newImage(placeholderImage)];
}

@end
