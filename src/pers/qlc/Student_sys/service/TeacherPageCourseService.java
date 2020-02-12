package pers.qlc.Student_sys.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pers.qlc.Student_sys.dao.TeacherDao;
import pers.qlc.Student_sys.entity.Course;

@Service
public class TeacherPageCourseService {
	@Autowired
	private TeacherDao teacherDao;

	public ArrayList<Course> queryCourse(String id) {
		return teacherDao.selectCourse(id);
	}
}