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
