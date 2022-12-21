#!/usr/bin/env -S scala -nc

def whileLoop(condition: => Boolean)(body: => Unit): Unit =
  if (condition) {
    body
    whileLoop(condition)(body)
  }

var i = 4

whileLoop (i > 0) {
  println(i)
  i -= 1
}  // prints 2 1