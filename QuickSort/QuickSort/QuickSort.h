//
//  QuickSort.h
//  QuickSort
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface QuickSort : NSObject

- (NSArray *)sort:(NSMutableArray *)input useGCD:(BOOL)useGCD;
- (BOOL)testArray:(NSArray *)input;
- (void) Quicksort:(NSMutableArray*)A start:(int)start end:(int)end;

- (int) Partition:(NSMutableArray*)A partiton:(int)start length:(int)end;
- (void) Swap:(NSMutableArray*)A first:(int)first second:(int)second;

- (void) Quicksort3:(int**)A start:(int)start end:(int)end;
- (int) Partition3:(int*)A partiton:(int)start length:(int)end;
- (void) Swap3:(int*)A first:(int)first second:(int)second;

@end
void QuickSortCplus(int *& , int , int);
void Partition(int *&, int);
void Swap (int *& A, int first , int second);
