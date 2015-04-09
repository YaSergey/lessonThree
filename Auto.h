//
//  Auto.h
//  lessonThree
//
//  Created by Sergey Yasnetsky on 08.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <CoreGraphics/CoreGraphics.h>
#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>



@interface Auto : NSObject

- (instancetype)init;
- (void) getModel;

@property (nonatomic, strong) NSString * model;
@property (nonatomic, strong) UIColor * color;


@end
