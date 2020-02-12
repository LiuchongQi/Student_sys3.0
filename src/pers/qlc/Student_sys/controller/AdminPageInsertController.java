package pers.qlc.Student_sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.qlc.Student_sys.entity.Admin;
import pers.qlc.Student_sys.entity.Course;
import pers.qlc.Student_sys.entity.Student;
import pers.qlc.Student_sys.entity.Teacher;
import pers.qlc.Student_sys.service.AdminPageInsertService;

@Controller
public class AdminPageInsertController {
	@Autowired
	private AdminPageInsertService AdminPageInsertService;

	@RequestMapping("insertAdmin")
	public String insertAdmin(String admin_username, String admin_password) {
		Admin admin = new Admin();
		admin.setUsername(admin_username);
		admin.setPassword(admin_password);
		AdminPageInsertService.insertAdmin(admin);
		return "redirect:/queryAdmin.do";

	}

	@RequestMapping("insertCourse")
	public String insertCourse(String Cno, String Cname, String Cteacher, String Cday, String Ctime) {
		Course course = new Course();
		course.setCno(Cno);
		course.setCname(Cname);
		course.setTno(Cteacher);
		course.setCday(Cday);
		course.setCtime(Ctime);
		AdminPageInsertService.insertCourse(course);
		return "redirect:/queryCourse.do";
	}

	@RequestMapping("insertTeacher")
	public String insertTeacher(String Tno, String password, String Tname, String Tsex, int Tage, String Tjob) {
		Teacher teacher = new Teacher();
		teacher.setPassword(password);
		teacher.setTage(Tage);
		teacher.setTjob(Tjob);
		teacher.setTname(Tname);
		teacher.setTsex(Tsex);
		teacher.setUsername(Tno);
		AdminPageInsertService.insertTeacher(teacher);
		return "redirect:/queryTeacher.do";

	}

	@RequestMapping("insertStudent")
	public String insertStudent(String Sno, String Sname, String password, String Ssex, int Sage, String Sdept,
			String Sclass, String Sgrade) {
		Student student = new Student();
		student.setGrade(Sgrade);
		student.setPassword(password);
		student.setSage(Sage);
		student.setSclass(Sclass);
		student.setSdept(Sdept);
		student.setSname(Sname);
		student.setSsex(Ssex);
		student.setUsername(Sno);
		AdminPageInsertService.insertStudent(student);
		return "redirect:/queryStudent.do";
	}
}
