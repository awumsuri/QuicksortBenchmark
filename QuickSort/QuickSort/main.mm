//
//  main.m
//  QuickSort
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

#import <Foundation/Foundation.h>

#include <stdlib.h>

#import "QuickSort.h"
#import "Utils.h"

#define NUM_ELEMENTS 10000000

void populateArray(int*& a){
    for (int i = 0; i < NUM_ELEMENTS; i++)
        a[i]    = Utils::getRandom(NUM_ELEMENTS);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *data = [[NSMutableArray alloc] initWithCapacity:NUM_ELEMENTS];
        QuickSort* quicksort3    = [[QuickSort alloc] init];;
        
        int* a      = new int [NUM_ELEMENTS];
        int* b      = new int [NUM_ELEMENTS];
        int test[]  = {34,2,13,4,6,88,3,2,2,1};
        
        for (int i = 0; i < NUM_ELEMENTS; i++) {
            int r = arc4random() % NUM_ELEMENTS;
            [data addObject:[NSNumber numberWithInt:r]];
            a[i]    = r;
        }
        
        for (int i = 0 ; i < NUM_ELEMENTS; i++) {
            b[i]    = a[i];
            data[i] = [NSNumber numberWithInt:b[i]];
            //b[i]    = test[i];
        }
        
        NSTimeInterval start = [NSDate timeIntervalSinceReferenceDate];
        [quicksort3 Quicksort:data start:0 end:NUM_ELEMENTS-1];
        NSTimeInterval end = [NSDate timeIntervalSinceReferenceDate];       
        NSLog(@"Took %f seconds to sort %d elements.", (end - start), NUM_ELEMENTS);
        
        
        start = [NSDate timeIntervalSinceReferenceDate];
        [quicksort3 Quicksort3:&b start:0 end:NUM_ELEMENTS-1];
        end = [NSDate timeIntervalSinceReferenceDate];
        NSLog(@"ObjC C Array Took %f seconds to sort %d elements.", (end - start), NUM_ELEMENTS);
        
 
        //Utils::PrintArrayIntegers(b, NUM_ELEMENTS, "b Printed UnSort Array");
        ArrayFunctionPointer_QuickSort quicksort     = QuickSortCplus;
        Utils::timeFunction(quicksort,a, 0, NUM_ELEMENTS-1, "QuickSort Timing");
       // Utils::PrintArrayIntegers(a, NUM_ELEMENTS, "Printed Sort Array");
        delete a;
        delete b;
    }
    
    return 0;
}

