package pers.qlc.Student_sys.dao;

import java.util.ArrayList;

import pers.qlc.Student_sys.entity.Student;

public interface StudentDao {
	public void insertStudent(Student stu);
	public void deleteStudent(String id);
	public void updateStudent(Student stu); 
	public void updatePass(String id,String pass);
	public Student selectById(String id);
	public ArrayList<Student> selectAll(String sno, String sname, String sdept, String grade);
}
