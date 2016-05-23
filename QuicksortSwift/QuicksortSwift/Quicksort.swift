//
//  Quicksort.swift
//  QuicksortSwift
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

import Foundation

class Quicksort {
    
    func Swap(inout A:[Int], first: Int, second: Int){
        let temp        = A[first];
        A[first]       = A[second];
        A[second]        = temp;
    }
    
    func partition(inout A:[Int], start: Int, end: Int) -> Int{
        let pivot       = A[end];
        var index       = start-1;
        
        for i in start..<end {
            if(A[i] <= pivot){
                index += 1;
                Swap(&A, first: index, second: i)
            }
           // print("index:\(index) A:\(A[end]) pivot:\(pivot)");
        }
        Swap(&A, first: index+1, second: end);
        
        return (index + 1);
    }
    func quicksort(inout v: [Int], start: Int, end: Int, inout count: Int) {
        if start < end {
            count += 1;
            let pivotIndex = partition(&v, start:start, end:end);
            //let pivotIndex = partition(&v, left:start, right:end)
            quicksort(&v, start: start, end: (pivotIndex - 1), count: &count);
            quicksort(&v, start: (pivotIndex + 1), end: end, count: &count);
        }
    }
    
    func quicksort_while(inout c:[Int], inout count:Int){
        var i   = 0;
        var j   = 0;
        var left = 0;
        
        var right = c.count-1;
        
        var stack_pointer = -1;
        var stack = [Int]();
        var swap    = 0
        var temp    = 0;
        var median  = 0;
        
        while(true) {
            count += 1;
            if (right - left <= 7) {
                for(j=left+1;j<=right;j++){
                    swap = c[j];
                    i = j-1;
                    while(i>=left && c[i] > swap){
                       c[i+1] = c[i--];
                        
                    }
                    c[i+1] = swap;
                    
                }
                if(stack_pointer == -1){
                    break;
                }
                
                right = stack[stack_pointer--];
                left = stack[stack_pointer--];
            } else {
                median = (left + right) >> 1;
                i = left + 1;
                j = right;
                swap = c[median]; c[median] = c[i]; c[i] = swap;
                
                /* make sure: c[left] <= c[left+1] <= c[right] */
                if (c[left] > c[right]){
                    swap 		= c[left];
                    c[left] 	= c[right];
                    c[right] 	= swap;
                }
                if (c[i] > c[right]) {
                    swap 		= c[i];
                    c[i] 		= c[right];
                    c[right] 	= swap;
                }
                if (c[left] > c[i]) {
                    swap 		= c[left];
                    c[left] 	= c[i];
                    c[i] 		= swap;
                }
                temp = c[i];
                while (true){
                    while(c[i] < temp){
                      i++;
                        
                    }
                    while(c[j] > temp){
                        j--;
                    }
                    if(j < i){
                        break;
                    }
                    swap = c[i];
                    c[i] = c[j];
                    c[j] = swap;
                }
                
                c[left + 1] = c[j];
                c[j] = temp;
                
                if (right-i+1 >= j-left){
                    stack[++stack_pointer] = i;
                    stack[++stack_pointer] = right;
                    right = j-1;
                } else {
                    stack[++stack_pointer] = left;
                    stack[++stack_pointer] = j-1;
                    left = i;
                }
            }
        }
    }
}