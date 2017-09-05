//
//  Quicksort.swift
//  QuicksortSwift
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

import Foundation

class Quicksort {
    
    func Swap(_ A:inout [Int], first: Int, second: Int){
        let temp        = A[first];
        A[first]       = A[second];
        A[second]        = temp;
    }
    
    func partition(_ A:inout [Int], start: Int, end: Int) -> Int{
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
    func quicksort(_ v: inout [Int], start: Int, end: Int, count: inout Int) {
        if start < end {
            count += 1;
            let pivotIndex = partition(&v, start:start, end:end);
            //let pivotIndex = partition(&v, left:start, right:end)
            quicksort(&v, start: start, end: (pivotIndex - 1), count: &count);
            quicksort(&v, start: (pivotIndex + 1), end: end, count: &count);
        }
    }
}


