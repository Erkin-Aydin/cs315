#!/usr/bin/env -S scala -nc

object Test extends App {
  def foo(p: => Int) = {
      println("Entered foo, p="+p+" x="+x)
      x=p+7
      println("Returning from foo, p="+p + " x="+x)
  }

  var x: Int = 5
  println("Before foo, x="+x)
  foo(x+2)
  println("After foo, x="+x)
}
