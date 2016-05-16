/**
 * Created by Mtui on 5/24/15.
 */

var qs      = require("./QuickSort");
var random    = require("./power/sortinghelper");

var NUM_SORT        = 1000000;
var a   = [];
var count={
    count:0
}
a = random.randomArray(NUM_SORT);

var s   = "Qucksort-"+NUM_SORT;

console.time(s);
qs.Quicksort(a, 0 , NUM_SORT-1, count);
console.timeEnd(s);

console.log(" Number of Iterations:" + count.count);//
