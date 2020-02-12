package pers.qlc.Student_sys.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import pers.qlc.Student_sys.entity.Course;
import pers.qlc.Student_sys.service.StudentPageCourseService;

@Controller
@SessionAttributes("loginName")
public class StudentPageQueryCourseController {
	@Autowired
	private StudentPageCourseService StudentPageCourseService;
	

	@RequestMapping("/queryStudentCourse")
	public String queryMyCourse(@ModelAttribute("loginName")String id,Model model) {
		ArrayList<Course> queryInfo = StudentPageCourseService.queryCourse(id);
		model.addAttribute("Queryme_mycourse",queryInfo);
		return "Student_cla.jsp";
	}
}
