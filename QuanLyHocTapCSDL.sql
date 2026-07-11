CREATE DATABASE "ElearningDB";
-- 1. Tạo schema
CREATE SCHEMA elearning;
-- Nhóm bảng lớn (Tạo trước)
-- 2a. Bảng Students (Sinh viên)
CREATE TABLE elearning.Students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);
-- 2b. Bảng Instructors (Giảng viên)
CREATE TABLE elearning.Instructors (
    instructor_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE
);
-- Nhóm bảng nhỏ (Tạo sau)
-- 2c. Bảng Courses (Khóa học)
CREATE TABLE elearning.Courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    instructor_id INTEGER REFERENCES elearning.Instructors(instructor_id)
);
-- 2d. Bảng Enrollments (Đăng ký học)
CREATE TABLE elearning.Enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES elearning.Students(student_id),
    course_id INTEGER REFERENCES elearning.Courses(course_id),
    enroll_date DATE NOT NULL
);
-- 2e. Bảng Assignments (Bài tập)
CREATE TABLE elearning.Assignments (
    assignment_id SERIAL PRIMARY KEY,
    course_id INTEGER REFERENCES elearning.Courses(course_id),
    title VARCHAR(100) NOT NULL,
    due_date DATE NOT NULL
);
-- 2f. Bảng Submissions (Nộp bài)
CREATE TABLE elearning.Submissions (
    submission_id SERIAL PRIMARY KEY,
    assignment_id INTEGER REFERENCES elearning.Assignments(assignment_id),
    student_id INTEGER REFERENCES elearning.Students(student_id),
    submission_date DATE NOT NULL,
    grade NUMERIC(5,2) CHECK (grade >= 0 AND grade <= 100) -- Điểm số thực từ 0 đến 100
);