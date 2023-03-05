// A Go program is to read a person (last and first name) from console (use an input array if using 
// the sandbox) and assign an Id counting up. The program must use the structure Person.
// Supply the functions inPerson and printPerson.

package main

import "fmt"


type Person struct {
	lastName  string
	firstName string
	iD        int
}

func inPerson(person *Person, nextId int) (int, error) {
	fmt.Print("Enter your first name and last name: ")
	// var name string
	// var name2 string
	_, err := fmt.Scanln(&person.firstName, &person.lastName)
	if(err != nil){
		return nextId, nil
	}
	person.iD = nextId
	return nextId+1, nil
}

func printPerson(person Person) {
	fmt.Printf("First Name: %s Last Name: %s ID: %d\n", person.firstName, person.lastName, person.iD)
}

func main() {
	nextId := 101

	for {
		var (
			p   Person
			err error
		)
		nextId, err = inPerson(&p, nextId)
		if err != nil {
			fmt.Println("Invalid entry ... exiting")
			break
		}
		printPerson(p)
	}
}
