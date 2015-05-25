//
//  QuickSort.m
//  QuickSort
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QuickSort.h"

@implementation QuickSort

-(void) Swap:(NSMutableArray*)A first:(int)first second:(int)second{
    int temp    = [[A objectAtIndex:first] intValue];
    A[first]    = A[second];
    //[A insertObject:[A objectAtIndex:second] atIndex:first];
    //[A insertObject:[NSNumber numberWithInt:temp] atIndex:second];
    [A replaceObjectAtIndex:second withObject:[NSNumber numberWithInt: temp]];   
}

-(int) Partition:(NSMutableArray*)A partition:(int)partition length:(int)length{
    int pivot   = [[ A objectAtIndex:length] intValue];
    int i       = (partition-1);
    
    for (int j = partition; j <= length-1; j++) {
        if ([[A objectAtIndex:j] intValue] <= pivot) {
            i++;
            [self Swap:A first:i second:j];
        }
    }
    [self Swap:A first:(i+1) second:length];
    
    return (i + 1);
}

-(void)  Quicksort:(NSMutableArray*)A start:(int)start end:(int)end{
    if(start < end){
        int p       = [self Partition:A partition:start length:end];
        [self Quicksort:A start:start end:(p-1)];
        [self Quicksort:A start:p+1 end:end];
    }
}


-(void) Swap3:(int*)A first:(int)first second:(int)second{
    int temp        =A[first];
    A[first]       = A[second];
    //[A insertObject:[A objectAtIndex:second] atIndex:first];
    //[A insertObject:[NSNumber numberWithInt:temp] atIndex:second];
    //[A replaceObjectAtIndex:second withObject:[NSNumber numberWithInt: temp]];
    A[second]      = temp;
}

-(int) Partition3:(int*)A partition:(int)partition length:(int)length{
    int pivot   = A[length];
    int i       = (partition-1);
    
    for (int j = partition; j <= length-1; j++) {
        if (A[j] <= pivot) {
            i++;
            [self Swap3:A first:i second:j];
        }
    }
    [self Swap3:A first:(i+1) second:length];
    
    return (i + 1);
}

-(void)  Quicksort3:(int**)A start:(int)start end:(int)end{
    if(start < end){
        int p       = [self Partition3:*A partition:start length:end];
        [self Quicksort3:A start:start end:(p-1)];
        [self Quicksort3:A start:p+1 end:end];
    }
}

@end

void Swap (int *& A, int first , int second){
    int temp    = A[first];
    A[first]   = A[second];
    A[second]   = temp;
}

int Partition(int *& A, int p, int l){
    int pivot           = A[l];
    int i               = (p-1);
    for (int j = p; j < l; j++) {
        if(A[j] <= pivot){
            i++;
            Swap(A, i, j);
        }
    }
    Swap(A, (i+1), l);
    
    return (i + 1);
}

void QuickSortCplus(int *& A, int start, int length){
    if(start < length){
        int p         = Partition(A, start, length);
        QuickSortCplus(A, start, p-1);
        QuickSortCplus(A, p+1, length);
    }
    
}


