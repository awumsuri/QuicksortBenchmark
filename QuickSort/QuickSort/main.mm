//
//  main.m
//  QuickSort
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//



//
//  main.m
//  QuickSort
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

#import <Foundation/Foundation.h>

#include <stdlib.h>
#include <iostream>

#import "QuickSort.h"
#import "Utils.h"

#define NUM_ELEMENTS 1000000
#define RANDOM_TEST_DATA_SIZE 1000000
#define USE_TEST_DATA false

void populateArray(int*& a){
    for (int i = 0; i < NUM_ELEMENTS; i++)
        a[i]    = Utils::getRandom(NUM_ELEMENTS);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSMutableArray *data = [[NSMutableArray alloc] initWithCapacity:NUM_ELEMENTS];
        QuickSort* quicksort3    = [[QuickSort alloc] init];;
        
        int* a;
        int* b;
        int count   = 0;
        int iterations;
        
        if(!USE_TEST_DATA){
            a      = new int [NUM_ELEMENTS];
            b      = new int [NUM_ELEMENTS];
            iterations     = NUM_ELEMENTS;
            
            for (int i = 0; i < NUM_ELEMENTS; i++) {
                int r = arc4random() % NUM_ELEMENTS;
                [data addObject:[NSNumber numberWithInt:r]];
                a[i]    = r;
                b[i]    = r;
                
            }
            Utils::writeFile(a, NUM_ELEMENTS, "random2.txt");
            
        }else{
            
            a      = new int [RANDOM_TEST_DATA_SIZE];
            b      = new int [RANDOM_TEST_DATA_SIZE];
            iterations     = RANDOM_TEST_DATA_SIZE;
            
            Utils::loadFile(a, RANDOM_TEST_DATA_SIZE, "random.txt");
            for (int i = 0 ; i < RANDOM_TEST_DATA_SIZE; i++) {
                b[i]    = a[i];
                data[i] = [NSNumber numberWithInt:b[i]];
            }
        }      
        /*****************
         * Objective -C
         *****************/
        
        NSTimeInterval start = [NSDate timeIntervalSinceReferenceDate];
        [quicksort3 Quicksort:data start:0 end:iterations-1 count:&count];
        NSTimeInterval end = [NSDate timeIntervalSinceReferenceDate];
        NSLog(@"Obj-C Took %f seconds to sort %d elements. Number of (Quicksort call) Iterations: %d", (end - start), NUM_ELEMENTS, count);
        
        /*****************
         * Objective -C with C-Array
         *****************/
        count   = 0;
        start = [NSDate timeIntervalSinceReferenceDate];
        [quicksort3 Quicksort3:&b start:0 end:iterations-1 count:&count];
        end = [NSDate timeIntervalSinceReferenceDate];
        NSLog(@"ObjC C Array Took %f seconds to sort %d elements.  Number of (Quicksort call) Iterations: %d", (end - start), NUM_ELEMENTS, count);
        if(NUM_ELEMENTS <= 100)
            Utils::PrintArrayIntegers(b, NUM_ELEMENTS, "Printed Sort Array");
        count   = 0;
        
        /*****************
         * C++
         *****************/
        if(NUM_ELEMENTS <= 100)
            Utils::PrintArrayIntegers(a, NUM_ELEMENTS, "Printed UnSort Array");
        ArrayFunctionPointer_QuickSort quicksort     = QuickSortCplus;
        Utils::timeFunction(quicksort,a, 0, iterations-1, count, "QuickSort Timing");
        if(NUM_ELEMENTS <= 100)
            Utils::PrintArrayIntegers(a, NUM_ELEMENTS, "Printed Sort Array");
       // else
         Utils::writeFile(a, iterations, "random_sorted.txt");
        std::cout <<  "Quicksort C++ Number of (Quicksort call) Iterations:" << count << "\n";
        delete a;
        delete b;
    }
    
    return 0;
}



