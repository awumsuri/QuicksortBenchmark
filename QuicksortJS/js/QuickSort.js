/**
 * Created by Mtui on 5/24/15.
 *
 *
 */

module.exports =
{
    Quicksort: function (A, start, end, count) {
        if (start < end) {
            //debugger;
            count.count += 1;
            var partition = Partition(A, start, end);
            Quicksort(A, start, partition - 1, count);
            Quicksort(A, partition + 1, end, count);
        }
    }
}


function Quicksort (A, start, end, count) {
    if (start < end) {
        //debugger;
        count.count += 1;
        var partition = Partition(A, start, end);
        Quicksort(A, start, partition - 1, count);
        Quicksort(A, partition + 1, end, count);
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

function  quicksort_while(c){
    var i,j,
        left = 0,
        right= c.length-1,
        stack_pointer = -1;
    var stack = [],
        swap, temp,
        median;

    while(true) {
        if (right - left <= 7) {
            for(j=left+1;j<=right;j++){
                swap = c[j];
                i = j-1;
                while(i>=left && c[i] > swap)
                    c[i+1] = c[i--];
                c[i+1] = swap;
            }
            if(stack_pointer == -1)
                break;
            right = stack[stack_pointer--];
            left = stack[stack_pointer--];
        } else {
            median = (left + right) >> 1;
            i = left + 1;
            j = right;
            swap = c[median]; c[median] = c[i]; c[i] = swap;

            /* make sure: c[left] <= c[left+1] <= c[right] */
            if (c[left] > c[right]){
                swap 		= c[left];
                c[left] 	= c[right];
                c[right] 	= swap;
            } if (c[i] > c[right]) {
                swap 		= c[i];
                c[i] 		= c[right];
                c[right] 	= swap;
            } if (c[left] > c[i]) {
                swap 		= c[left];
                c[left] 	= c[i];
                c[i] 		= swap;
            }
            temp = c[i];
            while (true){
                do i++; while(c[i] < temp);
                do j--; while(c[j] > temp);
                if(j < i)
                    break;
                swap = c[i];
                c[i] = c[j];
                c[j] = swap;
            }

            c[left + 1] = c[j];
            c[j] = temp;

            if (right-i+1 >= j-left){
                stack[++stack_pointer] = i;
                stack[++stack_pointer] = right;
                right = j-1;
            } else {
                stack[++stack_pointer] = left;
                stack[++stack_pointer] = j-1;
                left = i;
            }
        }
    }
}
