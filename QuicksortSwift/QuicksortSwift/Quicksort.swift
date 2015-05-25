//
//  Quicksort.swift
//  QuicksortSwift
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

import Foundation

class Quicksort {
    
    func Swap(inout A:[UInt32], first: Int, second: Int){
        let temp        = A[first];
        A[first]       = A[second];
        A[second]        = temp;
    }
    
    func partition(inout A:[UInt32], start: Int, end: Int) -> Int{
        let pivot       = A[end];
        var index       = start-1;
        
        for(var i = start; i < end; i++){
            if(A[i] <= pivot){
                index++;
                Swap(&A, first: index, second: i)
            }
        }
        Swap(&A, first: index+1, second: end);
        
        return (index + 1);
    }
    

    
    func quicksort(inout v: [UInt32], start: Int, end: Int) {
        if start < end {
            let pivotIndex = partition(&v, start:start, end:end)
            //let pivotIndex = partition(&v, left:start, right:end)
            quicksort(&v, start: start, end: pivotIndex - 1)
            quicksort(&v, start: pivotIndex + 1, end: end)
        }
    }
}