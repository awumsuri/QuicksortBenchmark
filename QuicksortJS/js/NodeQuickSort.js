/**
 * Created by Mtui on 5/24/15.
 */
function Quicksort(A, start, end){
    if(start < end){
        // debugger;
        var partition   = Partition(A, start, end);
        Quicksort(A, start, partition-1);
        Quicksort(A, partition+1, end);
    }
}

function Swap(A, first, second){
    //debugger;
    var temp    = A[first];
    A[first]   = A[second];
    A[second]    = temp;
}

function Partition(A, start, end){
    //debugger;
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


var NUM_SORT        = 10000000;
var a   = [];
for(var i = 0; i < NUM_SORT; i++){
    a[i]    = Math.floor(Math.random() * NUM_SORT)+1;
}
// a =  [3,45,23,24,54,2,7,3,2,1];
// console.log("Before:"+a);
var d       = Date.now();
Quicksort(a, 0 , NUM_SORT-1);
var e       = Date.now();

console.log("QuickSort:"+ (e-d));//
//console.log("\nA:"+ a.toString());