import json

# Reading from the students.txt, courses.txt and courses_enrolled.txt files to access the comma seperate values of each row representing a tuple:
students = {}
with open("students.txt", "r") as f:
    for line in f:
        sid, name, program, address = line.strip().split(",")
        students[int(sid)] = {"Name": name, "Program": program, "Address": address}

courses = {}
with open("courses.txt", "r") as f:
    for line in f:
        cid, name, credits = line.strip().split(",")
        courses[int(cid)] = {"Name": name, "Credits": int(credits)}

courses_enrolled = []
with open("courses_enrolled.txt", "r") as f:
    for line in f:
        sid, cid, grade = line.strip().split(",")
        courses_enrolled.append({"SID": int(sid), "CID": int(cid), "Grade": grade})


# If we were to just have the data inside this program, we would simply use a dictionary to store the data as follows:
# students = {
#     1: {'SID': 1, 'Name': 'Alice', 'Program': 'Computer Science', 'Address': '123 Main St'},
#     2: {'SID': 2, 'Name': 'Bob', 'Program': 'Computer Science', 'Address': '456 Park Ave'},
#     3: {'SID': 3, 'Name': 'Charlie', 'Program': 'Computer Science', 'Address': '789 Elm St'},
# }

# courses = {
#     1: {'CID': 1, 'Name': 'Databases', 'Credits': 3},
#     2: {'CID': 2, 'Name': 'Algorithms', 'Credits': 4},
#     3: {'CID': 3, 'Name': 'Testing', 'Credits': 3},
# }
# # Here students 1 and 2 are enrolled in two courses each while student 3 is only enrolled in 1
# courses_enrolled = {
#     1: {'SID': 1, 'CID': 1, 'Grade': 'A'},
#     2: {'SID': 1, 'CID': 2, 'Grade': 'B+'},
#     3: {'SID': 2, 'CID': 1, 'Grade': 'A'},
#     4: {'SID': 2, 'CID': 2, 'Grade': 'A'},
#     5: {'SID': 3, 'CID': 1, 'Grade': 'B-'},
# }

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
# In order to return the result of the query in json format, I had to import the json module built in Python,
# Lines 40-45 were added to return the result of the query, and therefor may be omitted for the actual answer of the question
def run_query_for_json():
    results = query()
    return json.dumps(results)


print(run_query_for_json())
# Running the query results in the following JSON string being printed: 
# [{'Name': 'Alice', 'SID': 1}, {'Name': 'Bob', 'SID': 2}]
