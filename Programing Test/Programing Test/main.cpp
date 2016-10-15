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

void TestBinarySearch() {
    BinarySearch b({1,2,3,4,5,6,7,9,10,11,12,13,13434,324234234, 7687678687687}, 324234234);
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
    return 0;
}




