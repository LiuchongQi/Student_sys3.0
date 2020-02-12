package pers.qlc.Student_sys.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pers.qlc.Student_sys.dao.SCDao;
import pers.qlc.Student_sys.entity.Course;

@Service
public class StudentPageCourseService {
	@Autowired
	private SCDao scDao;

	public ArrayList<Course> queryCourse(String id) {
		return scDao.selectByStudent(id);
	}

	public void deleteCourse(String Sno, String Cno) {
		scDao.deleteSC(Cno, Sno);
	}
}
