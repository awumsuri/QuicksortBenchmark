//
//  main.cpp
//  Programing Test
//
//  Created by Suri on 6/5/16.
//  Copyright © 2016 Suri. All rights reserved.
//

#include <iostream>
#include "LinkList.h"
#include "BinarySearch.hpp"
#define MAX 1000

void TestBinarySearch2Dto1DMatri() {
    
    std::vector<std::vector<data_c>> a;
    
    for(int i = 0; i < 10; i++){
        std::vector<data_c>* temp = new std::vector<data_c>();
        for(int j = 0; j < 10; j++){
            temp->push_back(i*10 + j);
        }
        a.push_back(*temp);
    }
    
    std::vector<data_c>* b = BinarySearch::transForm2Dto1DMatrix(a);
    
    BinarySearch c(*b, 90);
    
}

void TestBinarySearch() {
    std::vector<data_c> a;
    
    for(int i = 0; i < 10000; i++){
        a.push_back(i);
    }
    
    BinarySearch c(a, 9210);
}

void TestLinkedList() {
    LinkList l;
    
    int i = 0;
    for(i = 0; i <= MAX; i++){
        Node* n = new Node();
        n->data = i;
        l.insert(n);
    }
    
    l.printNode();
    std::cout << "kth:" << l.FindKthNode(8)->data << std::endl;
}

int main(int argc, const char * argv[]) {
   // TestLinkedList();
    TestBinarySearch();
    TestBinarySearch2Dto1DMatri();
    return 0;
}




