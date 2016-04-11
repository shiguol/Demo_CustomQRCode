//
//  UIImage+DrawToCenterImage.m
//  Demo-CustomQRCore
//
//  Created by Alex on 4/5/16.
//  Copyright © 2016 yourtion. All rights reserved.
//

#import "UIImage+DrawToCenterImage.h"

@implementation UIImage (DrawToCenterImage)

- (UIImage *)drawImage:(UIImage *)inputImage inRect:(CGRect)frame {
  UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
  [self drawInRect:CGRectMake(0.0, 0.0, self.size.width, self.size.height)];
  [inputImage drawInRect:frame];
  UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return newImage;
}

@end
