/**
 * Created by Mtui on 5/24/15.
 */

var qs = require("./src/QuickSort");
var fs = require("fs");
var raw = fs.readFileSync('./src/data/random.txt','utf8');

var a  = raw.split("\n");

var NUM_SORT = a.length;

var c = {
    count: 0
}

var s   = "Qucksort-"+NUM_SORT;

console.time(s);
qs.Quicksort(a, 0 , NUM_SORT-1, c);
console.timeEnd(s);

for(var i = 0; i < 6; i++)
    console.log(a[i])
console.log(".\n.\n.")
for(var i = a.length-5; i < a.length ; i++)
    console.log(a[i])

console.log(" Number of Iterations:" + c.count);//
