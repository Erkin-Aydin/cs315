#!/usr/bin/env -S scala -nc

object Test extends App {

  def time(): Long = {
      println("In time()")
      System.nanoTime
  }

  def exec(t: => Long): Long = {  // pass-by-name
      println("Entered exec, calling t ...")
      println("t = " + t)
      println("Calling t again ...")
      t
  }

  println(exec(time()))

}