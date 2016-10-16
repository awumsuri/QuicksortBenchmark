//
//  BinarySearch.cpp
//  Programing Test
//
//  Created by Suri on 10/14/16.
//  Copyright © 2016 Suri. All rights reserved.
//

#include "BinarySearch.hpp"

BinarySearch::BinarySearch(std::vector<data_c> data, data_c value) {
    data_m = data;
    find_value_m = value;
    length = data_m.size()-1;
    
    BinarySearch::findIndex(NULL, 0, length);
}

std::vector<data_c>* BinarySearch::transForm2Dto1DMatrix(std::vector<std::vector<data_c>> a) {
    std::vector<data_c>* newA = new std::vector<data_c>();
    for(int i = 0; i < a.size(); i++) {
        std::vector<data_c> temp = a[i];
        for(int j = 0; j < temp.size(); j++)
            newA->push_back((i*10)+j);
    }
    
    return newA;
}


void BinarySearch::findIndex(data_c position, data_c startIndex, data_c endIndex) {    
    
    if(position == NULL_C)
        position = endIndex;
    
    position = startIndex + (endIndex - startIndex)/2;
    
    if(data_m[position] == find_value_m) {
        std::cout << "Found at index:" << position << std::endl;
        return;
    }     
    
    std::cout <<"current poisition:" << position <<  " current data:" << data_m[position] << std::endl;
    
    if (position >= endIndex || position <= 0) {
        std::cout << "Value not in this array" << std::endl;
        return;
    }
    
    if((data_m[position-1]) >= find_value_m) {
        position--;
        endIndex = position;
        BinarySearch::findIndex(position, startIndex, endIndex);
    }
    
    if(data_m[(position+1)] <= find_value_m) {
        position++;
        startIndex = position;        
        BinarySearch::findIndex(position, startIndex, endIndex);
    }
}
