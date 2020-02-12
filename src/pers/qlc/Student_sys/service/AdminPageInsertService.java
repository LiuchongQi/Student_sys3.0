package pers.qlc.Student_sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pers.qlc.Student_sys.dao.AdminDao;
import pers.qlc.Student_sys.dao.CourseDao;
import pers.qlc.Student_sys.dao.StudentDao;
import pers.qlc.Student_sys.dao.TeacherDao;
import pers.qlc.Student_sys.entity.Admin;
import pers.qlc.Student_sys.entity.Course;
import pers.qlc.Student_sys.entity.Student;
import pers.qlc.Student_sys.entity.Teacher;

@Service
public class AdminPageInsertService {
	@Autowired
	private AdminDao adminDao;

	public void insertAdmin(Admin admin) {
		adminDao.insertAdmin(admin);
	}

	@Autowired
	private CourseDao courseDao;

	public void insertCourse(Course course) {
		courseDao.insertCourse(course);
	}

	@Autowired
	private TeacherDao teacherDao;

	public void insertTeacher(Teacher teacher) {
		teacherDao.insertTeacher(teacher);
	}

	@Autowired
	private StudentDao studentDao;

	public void insertStudent(Student student) {
		studentDao.insertStudent(student);
	}
}
