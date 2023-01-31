# Define the tables using dicts
# Here I created 3 students
students = {
    1: {'SID': 1, 'Name': 'Alice', 'Program': 'Computer Science', 'Address': '123 Main St'},
    2: {'SID': 2, 'Name': 'Bob', 'Program': 'Computer Science', 'Address': '456 Park Ave'},
    3: {'SID': 3, 'Name': 'Charlie', 'Program': 'Computer Science', 'Address': '789 Elm St'},
}

courses = {
    1: {'CID': 1, 'Name': 'Databases', 'Credits': 3},
    2: {'CID': 2, 'Name': 'Algorithms', 'Credits': 4},
    3: {'CID': 3, 'Name': 'Testing', 'Credits': 3},
}
# Here students 1 and 2 are enrolled in two courses each while student 3 is only enrolled in 1
courses_enrolled = {
    1: {'SID': 1, 'CID': 1, 'Grade': 'A'},
    2: {'SID': 1, 'CID': 2, 'Grade': 'B+'},
    3: {'SID': 2, 'CID': 1, 'Grade': 'A'},
    4: {'SID': 2, 'CID': 2, 'Grade': 'A'},
    5: {'SID': 3, 'CID': 1, 'Grade': 'B-'},
}

# Define the query to get the student ID and name of all students who took Databases and got at least a B+
# We create a new list ("results") which will store the results of this query
def query():
    results = []
    for course_enrollment in courses_enrolled.values():
        if course_enrollment['Grade'] >= 'B+' and courses[course_enrollment['CID']]['Name'] == 'Databases':
            student = students[course_enrollment['SID']]
            results.append({'Name': student['Name'], 'SID': student['SID']}) #We append to the list the name and SID of the query
    return results

# Run the query
print(query())


# Upon running the query, the result is: 
# [{'Name': 'Alice', 'SID': 1}, {'Name': 'Bob', 'SID': 2}]
