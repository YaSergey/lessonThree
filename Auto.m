//
//  Auto.m
//  lessonThree
//
//  Created by Sergey Yasnetsky on 08.04.15.
//  Copyright (c) 2015 Sergey Yasnetsky. All rights reserved.
//

#import "Auto.h"

@implementation Auto

- (instancetype)initWithStrng: (NSString *) model

{
    self = [super init];
    if (self) {
        
        self.model = model;
    }
    return self;
}

-(void) getModel {
    NSLog(@"self.model %@", self.model);
    
}

- (void) pus_Gas {
    
    NSLog(@"Speed has going Up");
}


- (void) dealloc {
    NSLog(@"dealloc");
}

@end
