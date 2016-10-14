(function e(t,n,r){function s(o,u){if(!n[o]){if(!t[o]){var a=typeof require=="function"&&require;if(!u&&a)return a(o,!0);if(i)return i(o,!0);var f=new Error("Cannot find module '"+o+"'");throw f.code="MODULE_NOT_FOUND",f}var l=n[o]={exports:{}};t[o][0].call(l.exports,function(e){var n=t[o][1][e];return s(n?n:e)},l,l.exports,e,t,n,r)}return n[o].exports}var i=typeof require=="function"&&require;for(var o=0;o<r.length;o++)s(r[o]);return s})({1:[function(require,module,exports){
(function (global){
/**
 * Created by Mtui on 5/24/15.
 */

"use-strict"

var isBrowser = global.navigator ? true : false;
console.log("this window", global.navigator)

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





}).call(this,typeof global !== "undefined" ? global : typeof self !== "undefined" ? self : typeof window !== "undefined" ? window : {})
},{}]},{},[1]);
