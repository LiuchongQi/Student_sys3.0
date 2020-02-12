package pers.qlc.Student_sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pers.qlc.Student_sys.dao.StudentDao;
import pers.qlc.Student_sys.entity.Student;

@Service
public class StudentPageInfoService {
	@Autowired
	private StudentDao studentDao;

	public Student queryInfo(String id) {
		return studentDao.selectById(id);
	}
}
