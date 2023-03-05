// Write a function in Go that takes as input a float variable and returns two integer values.
// One integer value which is the floor of the float value and the second integer value which
// is the ceiling of the float value. Print the result to console.

package main

import (
    "fmt"
    "math"
  )

func parseFloat(value float64) (floor, ceil int) {
  return int(math.Floor(value)), int(math.Ceil(value))
}

func main(){
  value := 7.5
  floor, ceiling := parseFloat(value)
  fmt.Printf("Value: %.2f Floor: %d Ceil: %d", value, floor, ceiling)
}
