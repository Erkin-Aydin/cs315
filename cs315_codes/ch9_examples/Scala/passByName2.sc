#!/usr/bin/env -S scala -nc

object Test extends App {
  // `fp` is defined as a by-name parameter
  def foo(fp: => Int) = {
      println("Entered foo, fp="+fp)
      fp = 5 // ERROR: reassignment to val
  }

  var ap : Int = 0
  foo(ap)
  println(ap)
}