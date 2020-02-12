package pers.qlc.Student_sys.dao;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;

import pers.qlc.Student_sys.entity.Course;
import pers.qlc.Student_sys.entity.SC;
import pers.qlc.Student_sys.entity.Student;

@MapperScan
public interface SCDao {
	public void insertSC(SC sc);
	public void insertScore(SC sc);
	public void deleteSC(String Cno,String Sno);
	public ArrayList<Student> selectByCourse(String Cno);
	public ArrayList<Course> selectByStudent(String Sno);
}
