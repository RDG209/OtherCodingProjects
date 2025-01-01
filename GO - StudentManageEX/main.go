package main

import (
	"fmt"
	"sort"
	"strings"
)

type Student struct {
	Name string
	ID   int
	GPA  float64
}


type StudentManager struct {
	studentList []Student // collection
}

// add a student to list
func (manager *StudentManager) addStudent(name string, id int, gpa float64) {
	student := Student{name, id, gpa}
	manager.studentList = append(manager.studentList, student)
}

// delete a student by ID
func (manager *StudentManager) deleteStudent(id int) {
	var updatedList []Student
	for _, student := range manager.studentList {
		if student.ID != id {
			updatedList = append(updatedList, student)
		}
	}
	manager.studentList = updatedList
}

// search for a student by name
func (manager *StudentManager) searchStudentByName(name string) *Student {
	for _, student := range manager.studentList {
		if strings.ToLower(student.Name) == strings.ToLower(name) {
			return &student
		}
	}
	fmt.Println("Error: No student with name", name, "found.")
	return nil
}

// search for a student by ID
func (manager *StudentManager) searchStudentById(id int) *Student {
	for _, student := range manager.studentList {
		if student.ID == id {
			return &student
		}
	}
	fmt.Println("Error: No student with ID", id, "found.")
	return nil
}

// sort by GPA
func (manager *StudentManager) sortStudentsByGPA() {
	sort.Slice(manager.studentList, func(i, j int) bool {
		return manager.studentList[i].GPA > manager.studentList[j].GPA
	})
}

// display all students
func (manager *StudentManager) displayStudents() {
	if len(manager.studentList) == 0 {
		fmt.Println("No students to display.")
	} else {
		for _, student := range manager.studentList {
			fmt.Printf("Name: %s, ID: %d, GPA: %.2f\n", student.Name, student.ID, student.GPA)
		}
	}
}

// Main function to run the program
func main() {
	manager := StudentManager{}

	// Adding some students to the list
	manager.addStudent("Bob", 1, 4.0)
	manager.addStudent("Shob", 2, 2.2)
	manager.addStudent("Cob", 3, 3.4)

	// Display all students
	fmt.Println("All Students:")
	manager.displayStudents()

	// Search for a student by ID
	var idToFind int
	fmt.Println("\nEnter the ID of the student you wish to find:")
	fmt.Scan(&idToFind)
	fmt.Printf("\nSearching for student with ID %d:\n", idToFind)
	foundStudent := manager.searchStudentById(idToFind)
	if foundStudent != nil {
		fmt.Printf("Found: Name: %s, ID: %d, GPA: %.2f\n", foundStudent.Name, foundStudent.ID, foundStudent.GPA)
	}

	// sort students by GPA
	fmt.Println("\nAfter Sorting by GPA (Descending):")
	manager.sortStudentsByGPA()
	manager.displayStudents()

	// delete student by ID
	var idToDelete int
	fmt.Println("\nEnter the ID of the student you wish to delete:")
	fmt.Scan(&idToDelete)
	manager.deleteStudent(idToDelete)
	fmt.Printf("\nAfter Deleting student with ID %d:\n", idToDelete)
	manager.displayStudents()
}
