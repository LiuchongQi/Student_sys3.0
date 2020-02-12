package pers.qlc.Student_sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pers.qlc.Student_sys.dao.AdminDao;
import pers.qlc.Student_sys.dao.CourseDao;
import pers.qlc.Student_sys.dao.StudentDao;
import pers.qlc.Student_sys.dao.TeacherDao;


@Service
public class AdminPageDeleteService {
	@Autowired
	private AdminDao adminDao;
	public void deleteAdmin(String id) {
		adminDao.deleteAdmin(id);
	}
	@Autowired
	private CourseDao courseDao;
	public void deleteCourse(String id) {
		courseDao.deleteCourse(id);
	}
	
	@Autowired
	private StudentDao studentDao;
	public void deleteStudent(String id) {
		studentDao.deleteStudent(id);
	}
	@Autowired
	private TeacherDao teacherDao;
	public void deleteTeacher(String id) {
		teacherDao.deleteTeacher(id);
	}
}
