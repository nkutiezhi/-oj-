drop table if exists solution;
drop table if exists student;
drop table if exists teacher;
drop table if exists problem;
drop table if exists course;
create table course(
courseId int(20) primary key not null auto_increment,
name varchar(40) not null,
begin_time varchar(20) not null,
end_time varchar(20) not null
);
create table student(
stuId int(8) primary key not null,
pwd varchar(20) not null,
name varchar(20) not null,
courseId int(100) not null,
foreign key(courseId) references course(courseId)
);
create table teacher(
teacherId int(8) primary key not null,
pwd varchar(20) not null,
name varchar(20) not null,
courseId int(100) not null,
foreign key(courseId) references course(courseId)
);
create table problem(
problemId int(20) primary key not null auto_increment,
title varchar(30) not null,
type varchar(2) not null,
description varchar(1000) not null,
begin_time varchar(20) not null,
end_time varchar(20) not null,
courseId int(20) not null,
sample_in varchar(1000) not null,
sample_out varchar(1000) not null,
foreign key(courseId) references course(courseId)
);
create table solution(
solutionId int(20) primary key not null auto_increment,
problemId int(20) not null,
stuId int(20) not null,
scheme varchar(2000) not null,
result varchar(2) not null,
time varchar(20) not null,
foreign key(problemId) references problem(problemId),
foreign key(stuId) references student(stuId)
);