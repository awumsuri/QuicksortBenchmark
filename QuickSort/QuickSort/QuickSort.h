//
//  QuickSort.h
//  QuickSort
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface QuickSort : NSObject

- (void) Quicksort:(NSMutableArray*)A start:(int)start end:(int)end count:(int*)count;

- (int) Partition:(NSMutableArray*)A partiton:(int)start length:(int)end;
- (void) Swap:(NSMutableArray*)A first:(int)first second:(int)second;

- (void) Quicksort_C_Array:(int**)A start:(int)start end:(int)end count:(int*)count;
- (int) Partition_C_Array:(int*)A partiton:(int)start length:(int)end;
- (void) Swap_C_Array:(int*)A first:(int)first second:(int)second;

@end
void QuickSortCplus(int *& , int , int, int&);
void Partition(int *&, int);
void Swap (int *& A, int first , int second);
