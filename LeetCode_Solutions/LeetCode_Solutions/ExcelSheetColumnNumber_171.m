//
//  ExcelSheetColumnNumber_171.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/14.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//

/*  The description of question
 
 Given a column title as appear in an Excel sheet, return its corresponding column number.
 
 For example:
 
 A -> 1
 B -> 2
 C -> 3
 ...
 Z -> 26
 AA -> 27
 AB -> 28
 
 */

#import "ExcelSheetColumnNumber_171.h"

@implementation ExcelSheetColumnNumber_171

- (NSInteger)titleToNumber:(NSString *)s {

    if (s == nil) {
        return 0;
    }
    NSInteger sum = 0;
    for (int i = 0; i < s.length; i++) {
        sum = 26 * sum + [s characterAtIndex:i] - 'A' + 1;
    }
    return sum;
}

@end
