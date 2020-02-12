package pers.qlc.Student_sys.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.annotation.MapperScan;

import pers.qlc.Student_sys.entity.Course;

@MapperScan
public interface CourseDao {
	public void insertCourse(Course course);
	public void deleteCourse(String id);
	public void updateCourse(Course course);
	public ArrayList<Course> selectAll(String Cno,String Cname,String Tno,String Cday);
	public List<Course> selectAllCho(int index,int count);
	public int getTotalCount();
}
