//
//  main.swift
//  QuicksortSwift
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

import Foundation

let NUM_ELEMENTS:Int    = 1000000;
let USE_TEST_DATA       = false;
var A   = Array<Int>();


if(USE_TEST_DATA){
    
    let path = NSBundle.mainBundle().pathForResource("random", ofType: "txt")
    Utils.loadFile(&A, path: path!);
    
}
else{
    for (var i:Int = 0; i < NUM_ELEMENTS; i++) {
        let r   =  arc4random_uniform(NUM_ELEMENTS) + 1;
        A.append(r);
    }
}

let q:Quicksort         = Quicksort();
var count               = 0;

Utils.timeFunction(q.quicksort, A: &A, start: 0, end:A.count-1, count:&count, description:"Timing for Quicksort");
if(NUM_ELEMENTS <= 100){
        println("A:\(A)");
}
println("Number of (Quicksort call) Interations:\(count)");


