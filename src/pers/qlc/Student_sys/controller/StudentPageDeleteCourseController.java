package pers.qlc.Student_sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import pers.qlc.Student_sys.service.StudentPageCourseService;

@Controller
@SessionAttributes("loginName")
public class StudentPageDeleteCourseController {
	@Autowired
	private StudentPageCourseService StudentPageCourseService;

	@RequestMapping("/deleteChooseCourse/{Cno}")
	public String queryInfo(@ModelAttribute("loginName") String id, @PathVariable String Cno) {
		StudentPageCourseService.deleteCourse(id, Cno);
		return "redirect:/queryStudentCourse.do";
	}
}
