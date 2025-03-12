select *from dbo.Student
go

select * from dbo.Course;

select * from student s
inner join Course c
on s.RollNo=c.RollNo;

select c.courseID,s.RollNo,s.StudentName from student s
inner join Course c
on s.RollNo=c.RollNo;

select c.courseID,s.RollNo,s.StudentName from student s
left join Course c
on s.RollNo=c.RollNo;

select c.courseID,s.RollNo,s.StudentName from student s
right join Course c
on s.RollNo=c.RollNo;

select c.courseID,s.RollNo,s.StudentName from student s
full join Course c
on s.RollNo=c.RollNo;