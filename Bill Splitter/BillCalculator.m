//
//  BillCalculator.m
//  Bill Splitter
//
//  Created by Nicolas Guerrero on 9/16/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

#import "BillCalculator.h"

@implementation BillCalculator

-(NSString *)calculateSplit:(NSString *)bill numberOf:(float)people {
    float result = [bill floatValue] /people;
    NSString *labelTotal = [NSString stringWithFormat:@"%f", result];
    return labelTotal;
}


@end
