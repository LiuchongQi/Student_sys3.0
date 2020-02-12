package pers.qlc.Student_sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import pers.qlc.Student_sys.entity.Student;
import pers.qlc.Student_sys.service.StudentPageInfoService;

@Controller
@SessionAttributes("loginName")
public class StudentPageQueryInfoController {
	@Autowired
	private StudentPageInfoService StudentPageInfoService;

	@RequestMapping("queryStudentInfo")
	public String queryInfo(@ModelAttribute("loginName")String id,Model model) {
		Student student = StudentPageInfoService.queryInfo(id);
		model.addAttribute("Queryme_student",student);
		return "Student_info.jsp";
	}
}
