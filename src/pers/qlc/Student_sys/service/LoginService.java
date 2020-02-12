package pers.qlc.Student_sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pers.qlc.Student_sys.dao.AdminDao;
import pers.qlc.Student_sys.dao.StudentDao;
import pers.qlc.Student_sys.dao.TeacherDao;
import pers.qlc.Student_sys.entity.Admin;
import pers.qlc.Student_sys.entity.Student;
import pers.qlc.Student_sys.entity.Teacher;

@Service
public class LoginService {
	@Autowired
	private AdminDao adminDao;

	public boolean loginAdmin(String userName, String passWord) {
		Admin admin = adminDao.selectById(userName);
		if (admin == null) {
			return false;
		} else if (passWord.equals(admin.getPassword())) {
			return true;
		} else {
			return false;
		}
	}

	@Autowired
	private StudentDao studentDao;

	public boolean loginStudent(String userName, String passWord) {
		Student student = studentDao.selectById(userName);
		if (student == null) {
			return false;
		} else if (passWord.equals(student.getPassword())) {
			return true;
		} else {
			return false;
		}
	}

	@Autowired
	private TeacherDao teacherDao;

	public boolean loginTeacher(String userName, String passWord) {
		Teacher teacher = teacherDao.selectById(userName);
		if (teacher == null) {
			return false;
		} else if (passWord.equals(teacher.getPassword())) {
			return true;
		} else {
			return false;
		}
	}
}
