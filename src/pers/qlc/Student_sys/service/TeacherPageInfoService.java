package pers.qlc.Student_sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pers.qlc.Student_sys.dao.TeacherDao;
import pers.qlc.Student_sys.entity.Teacher;

@Service
public class TeacherPageInfoService {
	@Autowired
	private TeacherDao teacherDao;

	public Teacher queryInfo(String id) {
		return teacherDao.selectById(id);
	}
}
