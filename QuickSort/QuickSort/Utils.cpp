//
//  Utils.cpp
//  CodingInverviews
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

#include "Utils.h"

int Utils::getRandom(int max){
    
    static std::mt19937 rng;
    rng.seed(std::random_device()());
    static std::uniform_int_distribution<std::mt19937::result_type> dist6(1,max);
    
    return dist6(rng);
}

void Utils::timeFunction(VoidFunctionPointer func, std::string description){
    clock_t t;
    t   = clock();
    (func)();
    t   = clock()   - t;
    print((float)t, description);
}

void Utils::timeFunction(ArrayFunctionPointer func, int*& a, std::string description){
    
    clock_t t;
    t   = clock();
    (func)(a);
    t   = clock()   - t;
    print((float)t, description);
}

void Utils::timeFunction(ArrayFunctionPointer_QuickSort func, int*& a, int start, int end,  std::string description){
    
    clock_t t;
    t   = clock();
    (func)(a, start, end);
    t   = clock()   - t;
    print((float)t, description);
}

void Utils::PrintArrayIntegers(int*& a, int size, std::string description){
    
    std::cout << "\n" << description << std::endl;
    for (int i = 0; i < size; i++) {
        std::cout << a[i] << " ";
    }
    std::cout << "\n";
    
}

void Utils::print(float time, std::string description){
    std::cout << "********************************\n";
    std::cout << "*\n";
    std::cout << "* " << description << std::endl;
    std::cout << "* Computation time(s):" << time / CLOCKS_PER_SEC<< "\n";
    std::cout << "********************************\n";
}