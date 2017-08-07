//
//  main.swift
//  QuicksortSwift
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

import Foundation

let NUM_ELEMENTS:Int    = 10000000;
let USE_TEST_DATA       = true;
var A   = Array<Int>();

if(USE_TEST_DATA){
    let path = Bundle.main.path(forResource: "random", ofType: "txt")
    Utils.loadFile(A: &A, path: path!);
}
else{    
    for _ in 0..<NUM_ELEMENTS {
        let r   =  arc4random_uniform(UInt32(NUM_ELEMENTS)) + 1;
        A.append(Int(r));
    }
}

let q:Quicksort = Quicksort();
var count = 0;
print("***********************************\n*number of element:\(A.count)");

Utils.timeFunction(f: q.quicksort, A: &A, start: 0, end:A.count-1, count:&count, description:"Timing for Quicksort");
//Utils.timeFunction(q.quicksort_while, A:&A, count:&count, description:"Timing for quicksort while");

if(NUM_ELEMENTS <= 100){
        print("A:\(A)");
}
print("Number of (Quicksort call) Iterations:\(count)");


