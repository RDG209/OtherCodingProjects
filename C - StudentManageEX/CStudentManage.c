#include <stdio.h>
#include <string.h>

#define MAX_STUDENTS 3

typedef struct {
    char name[50];
    int id;
    double gpa;
} Student;

Student studentList[MAX_STUDENTS];
int studentCount = 0; 

void addStudent(const char *name, int id, double gpa) {
    if (studentCount < MAX_STUDENTS) {
        strcpy(studentList[studentCount].name, name);
        studentList[studentCount].id = id;
        studentList[studentCount].gpa = gpa;
        studentCount++;
    } else {
        printf("Error: Student list is full.\n");
    }
}

void deleteStudent(int id) {
    int i;
    for (i = 0; i < studentCount; i++) {
        if (studentList[i].id == id) {
            for (int j = i; j < studentCount - 1; j++) {
                studentList[j] = studentList[j + 1];
            }
            studentCount--;
            return;
        }
    }
    printf("Error: No student with ID %d found.\n", id);
}

Student* searchStudentByName(const char *name) {
    for (int i = 0; i < studentCount; i++) {
        if (strcmp(studentList[i].name, name) == 0) {
            return &studentList[i];
        }
    }
    printf("Error: No student with name %s found.\n", name);
    return NULL;
}

Student* searchStudentById(int id) {
    for (int i = 0; i < studentCount; i++) {
        if (studentList[i].id == id) {
            return &studentList[i];
        }
    }
    printf("Error: No student with ID %d found.\n", id);
    return NULL;
}

int compareGPA(const void *a, const void *b) {
    double gpaA = ((Student*)a)->gpa;
    double gpaB = ((Student*)b)->gpa;
    if (gpaA < gpaB) return 1;
    if (gpaA > gpaB) return -1;
    return 0;
}

void sortStudentsByGPA() {
    qsort(studentList, studentCount, sizeof(Student), compareGPA);
}

void displayStudents() {
    if (studentCount == 0) {
        printf("No students to display.\n");
    } else {
        for (int i = 0; i < studentCount; i++) {
            printf("Name: %s, ID: %d, GPA: %.2f\n", studentList[i].name, studentList[i].id, studentList[i].gpa);
        }
    }
}

int main() {
    int id;
    char name[50];
    double gpa;

    addStudent("Bob", 1, 4.0);
    addStudent("Shob", 2, 2.2);
    addStudent("Cob", 3, 3.4);

    printf("All Students:\n");
    displayStudents();

    // Searching by ID
    printf("Enter the ID of the student you wish to find: ");
    scanf("%d", &id);
    printf("\nSearching for student with ID %d:\n", id);
    Student* foundStudent = searchStudentById(id);
    if (foundStudent != NULL) {
        printf("Found: Name: %s, ID: %d, GPA: %.2f\n", foundStudent->name, foundStudent->id, foundStudent->gpa);
    }

    sortStudentsByGPA();
    printf("\nAfter Sorting by GPA (Descending):\n");
    displayStudents();

    printf("Enter the ID of the student you wish to delete: ");
    scanf("%d", &id);
    deleteStudent(id);
    printf("\nAfter Deleting student with ID %d:\n", id);
    displayStudents();

    return 0;
}
