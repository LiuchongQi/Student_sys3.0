package pers.qlc.Student_sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import pers.qlc.Student_sys.entity.Teacher;
import pers.qlc.Student_sys.service.TeacherPageInfoService;

@Controller
@SessionAttributes("loginName")
public class TeacherPageInfoController {
	@Autowired
	private TeacherPageInfoService teacherPageInfoService;

	@RequestMapping("queryTeacherInfo")
	public String queryTeacherInfo(@ModelAttribute("loginName") String id,Model model) {
		Teacher teacher = teacherPageInfoService.queryInfo(id);
		model.addAttribute("Queryme_teacher", teacher);
		return "Teacher_info.jsp";
		
	}
}
