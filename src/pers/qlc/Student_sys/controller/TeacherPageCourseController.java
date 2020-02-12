package pers.qlc.Student_sys.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import pers.qlc.Student_sys.entity.Course;
import pers.qlc.Student_sys.service.TeacherPageCourseService;

@Controller
@SessionAttributes("loginName")
public class TeacherPageCourseController {
	@Autowired
	private TeacherPageCourseService teacherPageCourseService;

	@RequestMapping("/queryTeacherCourse")
	public String queryTeacherCourse(@ModelAttribute("loginName") String id,Model model) {
		ArrayList<Course> queryCourse = teacherPageCourseService.queryCourse(id);
		model.addAttribute("Queryme_course", queryCourse);
		return "Teacher_cla.jsp";
		
	}
}
