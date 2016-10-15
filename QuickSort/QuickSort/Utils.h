//
//  Utils.h
//  CodingInverviews
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

#ifndef __CodingInverviews__Utils__
#define __CodingInverviews__Utils__

#include <stdio.h>
#include <random>
#include <ctime>
#include <iostream>
#include <fstream>


typedef void (*VoidFunctionPointer)();
typedef float (*FloatFunction)(int, char*);
typedef void (*ArrayFunctionPointer_QuickSort)(int*&, int, int, int&);
typedef void (*ArrayFunctionPointer)(int*&);


class Utils{
public:
    static int getRandom(int);
    static void timeFunction(VoidFunctionPointer, std::string);
    static void timeFunction(ArrayFunctionPointer, int*&, std::string);
    static void timeFunction(ArrayFunctionPointer_QuickSort, int*&, int , int, int&, std::string);
    static void PrintArrayIntegers(int*&, int, std::string);
    static void writeFile(int*, int size, std::string);
    static void loadFile(int*&,int, std::string);
private:
    static void print(float, std::string);
};

#endif /* defined(__CodingInverviews__Utils__) */
