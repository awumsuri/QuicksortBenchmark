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
//for(var i = 0; i < NUM_SORT; i++){
//    a[i]    = Math.floor(Math.random() * NUM_SORT)+1;
//}
var s   = "Qucksort-"+NUM_SORT;
console.time(s);
qs.Quicksort(a, 0 , NUM_SORT-1, count);
console.timeEnd(s);
//var e       = Date.now();

console.log(" Number of Iterations:" + count.count);//
//console.log("\nA:"+ a.toString());