#!/usr/bin/env -S scala -nc

object Test extends App {

// `fp` is defined as a by-name formal parameter
  def foo(fp: => Int) = {
      println("Entered foo, fp="+fp)
      fp = 5 // Error: reassignment to val
      // No assignment to formal parameters is allowed.
  }

  var ap : Int = 0 // actual parameter
  foo(ap)
  println(ap)
}
