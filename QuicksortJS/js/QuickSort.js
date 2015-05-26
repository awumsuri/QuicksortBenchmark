/**
 * Created by Mtui on 5/24/15.
 */
function Quicksort(A, start, end, count){
    if(start < end){
        //debugger;
        count.count += 1;
        var partition   = Partition(A, start, end);
        Quicksort(A, start, partition-1, count);
        Quicksort(A, partition+1, end, count);
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
