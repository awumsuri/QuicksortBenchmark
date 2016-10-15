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


void BinarySearch::findIndex(data_c position, data_c startIndex, data_c endIndex) {    
    
    if(position == NULL_C)
        position = endIndex;
    
    if(data_m[position] == find_value_m) {
        std::cout << "Found at index:" << position << std::endl;
        return;
    }
    
    position = startIndex + (position/2);
    
    std::cout <<"current poisition:" << position <<  " current data:" << data_m[position] << std::endl;
    
    
    
    if (position >= endIndex || position <= 0) {
        std::cout << "Value not in this array" << std::endl;
        return;
    }
    
    if((data_m[position-1]) >= find_value_m) {
        position--;
        startIndex = 0;
        endIndex = position;
        BinarySearch::findIndex(position, startIndex, endIndex);
    }
    
    if(data_m[(position+1)] <= find_value_m) {
        position++;
        startIndex = position;
        endIndex = length;
        BinarySearch::findIndex(position, startIndex, endIndex);
    }
}
