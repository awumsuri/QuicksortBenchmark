//
//  Utils.swift
//  QuicksortSwift
//
//  Created by Suri on 5/24/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

import Foundation

class Utils {
    
    static func loadFile(inout A:[Int], path: String){
        if let content = String(contentsOfFile:path, encoding: NSUTF8StringEncoding, error: nil) {
            var aa = content.componentsSeparatedByString("\n")
            for number in aa{
                    if let n = number.toInt(){
                        A.append(n)
                    }
                }
            }
    }
    
    static func timeFunction(f:(inout [Int], Int, Int, inout Int)->(), inout A:[Int], start: Int, end: Int, inout count:Int, description: String){
        let startT:NSTimeInterval?
        let endT:NSTimeInterval?
        startT                   = NSDate.timeIntervalSinceReferenceDate();
        f(&A,start, end, &count);
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
