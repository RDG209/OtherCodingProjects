class Student:

    def __init__(self, name, id, gpa):
        self.name = name
        self.id = id
        self.gpa = gpa

    def __str__(self):
        return f"Name: {self.name}, ID: {self.id}, GPA: {self.gpa:.2f}"


class StudentManager:

    def __init__(self):
        self.student_list = []

    def add_student(self, name, id, gpa):
        student = Student(name, id, gpa)
        self.student_list.append(student)

    def delete_student(self, id):
        self.student_list = [
            student for student in self.student_list if student.id != id
        ]
    def get_student_gpa(self, student):
        return student.gpa

    def search_student_by_name(self, name):
        found_students = [
            student for student in self.student_list
            if student.name.lower() == name.lower()
        ]  ## create list
        if found_students:
            return found_students[0]
        else:
            print(f"Error: No student with name '{name}' found.")
            return None

    def search_student_by_id(self, id):
        found_students = [
            student for student in self.student_list if student.id == id
        ]
        if found_students:
            return found_students[0]
        else:
            print(f"Error: No student with ID {id} found.")
            return None

    def sort_students_by_gpa(self):
        # Sorting the list by GPA in descending order using a lambda function
        self.student_list.sort(key=lambda student: student.gpa, reverse=True)

    def display_students(self):
        if not self.student_list:
            print("No students to display.")
        else:
            for student in self.student_list:
                print(student)


def main():
    manager = StudentManager()

    manager.add_student("Bob", 1, 4.0)
    manager.add_student("Shob", 2, 2.2)
    manager.add_student("Cob", 3, 3.4)

    print("All Students:")
    manager.display_students()

    id_to_find = int(input("\nEnter the ID of the student you wish to find: "))
    print(f"\nSearching for student with ID {id_to_find}:")
    found_student = manager.search_student_by_id(id_to_find)
    if found_student:
        print(found_student)

    print("\nAfter Sorting by GPA (Descending):")
    manager.sort_students_by_gpa()
    manager.display_students()

    id_to_delete = int(
        input("\nEnter the ID of the student you wish to delete: "))
    manager.delete_student(id_to_delete)
    print(f"\nAfter Deleting student with ID {id_to_delete}:")
    manager.display_students()


if __name__ == "__main__":
    main()
