//
//  Utils.swift
//  QuicksortSwift
//
//  Created by Suri on 5/24/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

import Foundation

class Utils {
    static func timeFunction(f:(inout [UInt32], Int, Int)->(), inout A:[UInt32], start: Int, end: Int, description: String){
        let startT:NSTimeInterval?
        let endT:NSTimeInterval?
        startT                   = NSDate.timeIntervalSinceReferenceDate();
        f(&A,start, end);
        endT                     = NSDate.timeIntervalSinceReferenceDate();
        
        printTime(description, time: (endT!-startT!))
    }
    
    static func printTime(description: String, time: Double)->(){
        println("********************************")
        println("*")
        println("*\(description)")
        println("*Computation Time(s): \((time))");
        println("********************************")
    }
}
