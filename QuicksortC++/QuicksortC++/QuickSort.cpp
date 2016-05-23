//
//  QuickSort.m
//  QuickSort
//
//  Created by Suri on 5/23/15.
//  Copyright (c) 2015 Suri. All rights reserved.
//

void Swap (int *& A, int first , int second){
    int temp    = A[first];
    A[first]   = A[second];
    A[second]   = temp;
}

int Partition(int *& A, int p, int l){
    int pivot           = A[l];
    int i               = (p-1);
    for (int j = p; j < l; j++) {
        if(A[j] <= pivot){
            i++;
            Swap(A, i, j);
        }
    }
    Swap(A, (i+1), l);
    
    return (i + 1);
}

void QuickSortCplus(int *& A, int start, int length, int& count){
    if(start < length){
        count += 1;
        int p         = Partition(A, start, length);
        QuickSortCplus(A, start, p-1, count);
        QuickSortCplus(A, p+1, length, count);
    }
    
}


