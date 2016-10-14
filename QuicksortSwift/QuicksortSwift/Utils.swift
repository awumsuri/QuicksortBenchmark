//
//  Utils.swift
//  QuicksortSwift
//
//  Created by Suri on 5/24/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

import Foundation

class Utils {
    
    static func loadFile( A:inout [Int], path: String){
        if let content:String = try? String(contentsOfFile:path, encoding: String.Encoding.utf8) {
            let aa = content.components(separatedBy: "\n");
            for number in aa{
                    if let n = Int(number){
                        A.append(n)
                    }
                }
            }
    }
    
    static func timeFunction(f:(inout [Int], Int, Int, inout Int)->(), A:inout [Int], start: Int, end: Int, count:inout Int, description: String){
        let startT:TimeInterval?
        let endT:TimeInterval?
        startT                   = NSDate.timeIntervalSinceReferenceDate;
        f(&A,start, end, &count);
        endT                     = NSDate.timeIntervalSinceReferenceDate;        
        printTime(description: description, time: (endT!-startT!))
    }
    
    static func timeFunction(f:(inout [Int], inout Int)->(), A:inout [Int], count:inout Int, description: String){
        let startT:TimeInterval?
        let endT:TimeInterval?
        startT = NSDate.timeIntervalSinceReferenceDate;
        f(&A, &count);
        endT  = NSDate.timeIntervalSinceReferenceDate;
        printTime(description: description, time: (endT!-startT!))
    }
    
    static func printTime(description: String, time: Double)->(){
        print("********************************")
        print("*")
        print("*\(description)")
        print("*Computation Time(s): \((time))");
        print("********************************")
    }
}
