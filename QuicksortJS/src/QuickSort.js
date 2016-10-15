/**
 * Created by Mtui on 5/24/15.
 */

"use-strict"

var isBrowser = global.navigator ? true : false;

function Quicksort (A, start, end, count) {
    if (start < end) {
        count.count += 1;
        var partition = Partition(A, start, end);
        Quicksort(A, start, partition - 1, count);
        Quicksort(A, partition + 1, end, count);
    }
}

function Swap(A, first, second){
    var temp    = A[first];
    A[first]   = A[second];
    A[second]    = temp;
}

function Partition(A, start, end){
    var pivot           = A[end];
    var startIndex      =( start  -1);

    for(var i = start; i < end; i++){
        if(A[i] <= pivot){
            startIndex++;
            Swap(A, startIndex, i);
        }
    }

    Swap(A, (startIndex + 1), end);

    return (startIndex + 1);
}


if(isBrowser)
    window.Quicksort = Quicksort;


module.exports.Quicksort = Quicksort;
