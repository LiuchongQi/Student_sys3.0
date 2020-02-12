package pers.qlc.Student_sys.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.qlc.Student_sys.entity.Admin;
import pers.qlc.Student_sys.entity.Course;
import pers.qlc.Student_sys.entity.Student;
import pers.qlc.Student_sys.entity.Teacher;
import pers.qlc.Student_sys.service.AdminPageQueryService;;

@Controller
public class AdminPageQueryController {
		@Autowired
		private AdminPageQueryService AdminPageQueryService;
		@RequestMapping("/queryAdmin")
		public String QueryAdmin(Model model) {
			ArrayList<Admin> queryAdmin = AdminPageQueryService.queryAdmin();
			model.addAttribute("QueryAdmin", queryAdmin);
			return "Admin_user.jsp";
		}
		@RequestMapping("/queryCourse")
		public String QueryCourse(Model model,String Cno,String Cname,String Tno,String Cday) {
			ArrayList<Course> queryCourse = AdminPageQueryService.queryCourse(Cno,Cname,Tno,Cday);
			model.addAttribute("QueryCourse", queryCourse);
			return "Admin_cla.jsp";
		}
		@RequestMapping("/queryTeacher")
		public String queryTeacher(Model model,String Tno,String Tname,String Tjob) {
			ArrayList<Teacher> queryTeacher = AdminPageQueryService.queryTeacher(Tno,Tname,Tjob);
			model.addAttribute("QueryTeacher", queryTeacher);
			return "Admin_tea.jsp";
			
		}
		@RequestMapping("/queryStudent")
		public String queryStudent(Model model,String Sno,String Sname,String Sdept,String Grade) {
			ArrayList<Student> queryStudent = AdminPageQueryService.queryStudent(Sno,Sname,Sdept,Grade);
			model.addAttribute("QueryStudent", queryStudent);
			return "Admin_stu.jsp";
		}
}
