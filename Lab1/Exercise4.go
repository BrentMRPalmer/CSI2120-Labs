// Create a map that uses a string representing a course code as key. The value in the map 
// needs to be a structure with basic information about the course. The following main routine:

package main

import "fmt"
    
type Course struct {
	NStudents int16
	Professor string
	Avg float64
}

func main() {
	// Create a dynamic map m
	m := make(map[string]Course)

	// Add the courses CSI2120 and CSI2110 to the map 
	m["CSI2110"] = Course{186, "Lang", 79.5}
	m["CSI2120"] = Course{211, "Moura", 81.0}

	
	for k, v := range m {
		fmt.Printf("Course Code: %s\n", k)
		fmt.Printf("Number of students: %d\n", v.NStudents)
		fmt.Printf("Professor: %s\n", v.Professor)
		fmt.Printf("Average: %f\n\n", v.Avg)
	}
}

/* 
must print:

Course Code: CSI2110
Number of students: 186
Professor: Lang
Average: 79.500000

Course Code: CSI2120
Number of students: 211
Professor: Moura
Average: 81.000000
*/