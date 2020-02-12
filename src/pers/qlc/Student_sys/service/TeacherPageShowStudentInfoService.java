package pers.qlc.Student_sys.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pers.qlc.Student_sys.dao.SCDao;
import pers.qlc.Student_sys.entity.Student;

@Service
public class TeacherPageShowStudentInfoService {
	@Autowired
	private SCDao scDao;
	public ArrayList<Student> queryStudentInfo(String Cno) {
		ArrayList<Student> selectByCourse = scDao.selectByCourse(Cno);
		return selectByCourse;
	}
}
