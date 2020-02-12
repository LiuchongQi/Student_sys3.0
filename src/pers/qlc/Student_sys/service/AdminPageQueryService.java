package pers.qlc.Student_sys.service;

import java.util.ArrayList;

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
public class AdminPageQueryService {
	@Autowired
	private AdminDao adminDao;
	public ArrayList<Admin> queryAdmin() {
		ArrayList<Admin> admins = adminDao.selectAll();
		return admins;
	}
	
	@Autowired
	private CourseDao courseDao;
	public ArrayList<Course> queryCourse(String Cno,String Cname,String Tno,String Cday){
		ArrayList<Course> courses = courseDao.selectAll(Cno, Cname,Tno,Cday);
		return courses;
	}
	
	@Autowired
	private TeacherDao teacherDao;
	public ArrayList<Teacher> queryTeacher(String Tno,String Tname,String Tjob) {
		ArrayList<Teacher> teachers = teacherDao.selectAll(Tno,Tname,Tjob);
		return teachers;
	}
	
	@Autowired
	private StudentDao studentDao;
	public ArrayList<Student> queryStudent(String sno, String sname, String sdept, String grade) {
		ArrayList<Student> students = studentDao.selectAll(sno,sname,sdept,grade);
		return students;
	}
}
