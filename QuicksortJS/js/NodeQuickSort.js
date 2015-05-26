/**
 * Created by Mtui on 5/24/15.
 */

var qs   = require("./QuickSort");

var NUM_SORT        = 1000000;
var a   = [];
var count={
    count:0
}
for(var i = 0; i < NUM_SORT; i++){
    a[i]    = Math.floor(Math.random() * NUM_SORT)+1;
}
// a =  [3,45,23,24,54,2,7,3,2,1];
// console.log("Before:"+a);
console.log(typeof qs.Quicksort);
var d       = Date.now();
qs.Quicksort(a, 0 , NUM_SORT-1, count);
var e       = Date.now();

console.log("QuickSort:"+ (e-d)+ " Number of Iterations:" + count.count);//
//console.log("\nA:"+ a.toString());