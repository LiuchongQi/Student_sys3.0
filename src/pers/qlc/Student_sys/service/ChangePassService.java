package pers.qlc.Student_sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pers.qlc.Student_sys.dao.AdminDao;
import pers.qlc.Student_sys.dao.StudentDao;
import pers.qlc.Student_sys.dao.TeacherDao;

@Service
public class ChangePassService {
	@Autowired
	private AdminDao adminDao;

	public void changePassAdmin(String userName, String pwd) {
		adminDao.updatePass(userName, pwd);
	}

	@Autowired
	private StudentDao studentDao;

	public void changePassStudent(String userName, String pwd) {
		studentDao.updatePass(userName, pwd);
	}

	@Autowired
	private TeacherDao teacherDao;

	public void changePassTeacher(String userName, String pwd) {
		teacherDao.updatePass(userName, pwd);
	}
}
