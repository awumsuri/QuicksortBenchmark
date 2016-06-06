//
//  main.cpp
//  Programing Test
//
//  Created by Suri on 6/5/16.
//  Copyright © 2016 Suri. All rights reserved.
//

#include <iostream>
#include "LinkList.h"
#define MAX 100000


int main(int argc, const char * argv[]) {
    
    LinkList l;
    int i = 0;
    for(i = 0; i <= MAX; i++){
        Node* n = new Node();
        n->data = i;//+32 + 1;
       // std::cout << "n-main" << &n << std::endl;
        l.insert(n);
    }
    
    //l.printNode();
    std::cout << "kth:" << l.FindKthNode(8832)->data << std::endl;
}


