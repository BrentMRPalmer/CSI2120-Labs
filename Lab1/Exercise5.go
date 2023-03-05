/*

Change the program below:

1) Use a single factored const definition for the labels of the switch statement (an enumeration like construct).
2) Use a map literal to hold all strings that are printed. Use the const from above as key to the strings in the map.

*/

// status_print.go

package main

import (
	"fmt"
)

const (
	IDLE = iota
	START
	FORWARD
	FAST
	REVERSE = -1
)

var states = map[int8]string{
	IDLE: "Idle",
	START: "Start",
	FORWARD: "Forward",
	FAST: "Fast",
	REVERSE: "Reverse" }

func statusPrint(state int8) {
	switch state {
	case IDLE:
		fmt.Printf("State is %s (%d)\n", states[IDLE], IDLE)
	case START:
		fmt.Printf("State is %s (%d)\n", states[START], START)
	case FORWARD:
		fmt.Printf("State is %s (%d)\n", states[FORWARD], FORWARD)
	case FAST:
		fmt.Printf("State is %s (%d)\n", states[FAST], FAST)
	case REVERSE:
		fmt.Printf("State is %s (%d)\n", states[REVERSE], REVERSE)
	default:
		fmt.Printf("Invalid state: %d\n", state)
	}
	return
}

func main() {
	var i int8
	for i = -1; i < 5; i++ {
		statusPrint(i)
	}
}