//
//  Utils.cpp
//  CodingInverviews
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

#include "Utils.h"
#include <math.h>
#include <sstream>

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

void Utils::timeFunction(ArrayFunctionPointer_QuickSort func, int*& a, int start, int end, int& count,  std::string description){
    
    clock_t t;
    t   = clock();
    (func)(a, start, end, count);
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

void Utils::writeFile(int* a, int size,  std::string s){
    std::ofstream fout(s);
    int i = 0;
    if(fout.is_open()){
        
        std::cout << "File open successfully!" << std::endl;
        for(i = 0; i < size; i++){
            fout << a[i];
            fout << "\n";
        }
        fout << '\0';
        std::cout << "Write successfully";
        fout.close();
    }
    std::cout << "i:" << i << "\n";
}

void Utils::loadFile(int*& file,int size,  std::string s){
    std::ifstream fin(s);   
    std::string line;
    int position    = 0;
    if(fin.is_open()){
        std::cout << "File open successfully!" << std::endl;
        while (std::getline(fin, line)) {
            //fin.getline(strA[position]);
            if(line.empty()) continue;
            std::istringstream iss(line);
            file[position]      = atoi(line.c_str());
            position++;
        }
        
    }else {
        std::cout << "Could not open file";
    }
    file[size]  = '\0';
    fin.close();
    std::cout << "\nposition:" << position <<"\n";
    
}
