//
//  main.swift
//  QuicksortSwift
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

import Foundation

let NUM_ELEMENTS:UInt32    = 1000000;
var A   = Array<UInt32>();

for (var i:UInt32 = 0; i < NUM_ELEMENTS; i++) {
    let r   =  arc4random_uniform(NUM_ELEMENTS) + 1;
    A.append(r);
}

let q:Quicksort         = Quicksort();
Utils.timeFunction(q.quicksort, A: &A, start: 0, end:A.count-1, description:"Timing for Quicksort");

