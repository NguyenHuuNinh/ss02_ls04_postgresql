ĐỀ BÀI
Hệ thống quản lý học tập trực tuyến


[Bài tập] Hệ thống quản lý học tập trực tuyến

 

1. Mục tiêu
Thực hành tạo nhiều bảng với quan hệ phức tạp
Hiểu mối quan hệ 1-n và n-m
Tạo ràng buộc dữ liệu cơ bản, dễ hiểu cho người mới học
 

2. Mô tả
Yêu cầu:

Tạo database và schema
Database: ElearningDB
Schema: elearning
Tạo các bảng và cột
Bảng Students (sinh viên)
student_id: số nguyên tự tăng, khóa chính
first_name: tên, tối đa 50 ký tự, không bỏ trống
last_name: họ, tối đa 50 ký tự, không bỏ trống
email: email sinh viên, không trùng nhau, không bỏ trống
 

Bảng Instructors (giảng viên)
instructor_id: số nguyên tự tăng, khóa chính
first_name: tên, tối đa 50 ký tự, không bỏ trống
last_name: họ, tối đa 50 ký tự, không bỏ trống
email: email giảng viên, không trùng nhau, không bỏ trống
 

Bảng Courses (khóa học)
course_id: số nguyên tự tăng, khóa chính
course_name: tên khóa học, tối đa 100 ký tự, không bỏ trống
instructor_id: khóa ngoại liên kết với giảng viên
 

Bảng Enrollments (đăng ký học, n-m giữa Students và Courses)
enrollment_id: số nguyên tự tăng, khóa chính
student_id: khóa ngoại tham chiếu Students
course_id: khóa ngoại tham chiếu Courses
enroll_date: ngày đăng ký, không bỏ trống
 

Bảng Assignments (bài tập trong khóa học)
assignment_id: số nguyên tự tăng, khóa chính
course_id: khóa ngoại tham chiếu Courses
title: tiêu đề bài tập, tối đa 100 ký tự, không bỏ trống
due_date: ngày hết hạn, không bỏ trống
 

Bảng Submissions (nộp bài của sinh viên)
submission_id: số nguyên tự tăng, khóa chính
assignment_id: khóa ngoại tham chiếu Assignments
student_id: khóa ngoại tham chiếu Students
submission_date: ngày nộp bài, không bỏ trống
grade: điểm, số thực từ 0 đến 100
