package pers.qlc.Student_sys.dao;

import java.util.ArrayList;

import pers.qlc.Student_sys.entity.Course;
import pers.qlc.Student_sys.entity.Teacher;

public interface TeacherDao {
	public void insertTeacher(Teacher tea);
	public void deleteTeacher(String id);
	public void updateTeacher(Teacher tea); 
	public void updatePass(String id,String pass);
	public Teacher selectById(String id);
	public ArrayList<Teacher> selectAll(String Tno,String Tname,String Tjob);
	public ArrayList<Course> selectCourse(String id);
}
