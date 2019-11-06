USE university;
#Task 1
select * from Transcript 
#Task 2
select name , department_id from Instructor
#Task 3
select * from student
order by student.name; 
#Task 4
select panther_id,name,DOB from student
where DOB<1990
#Task 5
select course_ID,Term,year from transcript
where term = 'Fall' and Year = '2017'
#task 6
select course.code, course.name,department.name as department_Name,department.location
from course, department
where course.department_ID = department.department_ID
#task 7
select instructor.instructor_ID,instructor.name,instructor.department_ID
from instructor,department
where instructor.department_ID = department.department_ID
and department.name = 'Biology'
#task 8
select course.code,course.name,department.name,class_section.year
from course,department,class_section
where department.department_ID = course.department_ID
and class_section.course_id = course.course_ID
and class_section.year = '2015'
#task 9
select grade,count(grade) from transcript
where grade = 'A'
group by grade;
#task 10
select department.name,count(student.panther_id) as count
from student,department
where student.department_id = department.department_id
group by department.name
#task 11
select course.name,count(transcript.panther_ID) as count
from course,transcript
where transcript.course_ID = course.course_ID
group by course.name
order by count
#task 12
select course.code, course.name, SUM(transcript.grade = 'A') as A, SUM(transcript.grade = 'B') as B,SUM(transcript.grade = 'C') as C,SUM(transcript.grade = 'D') as D,SUM(transcript.grade = 'F') as F
from course,transcript
where course.course_ID = transcript.course_ID
group by course.name