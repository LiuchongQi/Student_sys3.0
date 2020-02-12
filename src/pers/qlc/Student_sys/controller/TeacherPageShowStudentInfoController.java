package pers.qlc.Student_sys.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.qlc.Student_sys.entity.Student;
import pers.qlc.Student_sys.service.TeacherPageShowStudentInfoService;

@Controller
public class TeacherPageShowStudentInfoController {
	@Autowired
	private TeacherPageShowStudentInfoService TeacherPageShowStudentInfoService;

	@RequestMapping("ShowCourseStudent/{cno}")
	public String queryStudentInfo(@PathVariable String cno, Model model) {
		ArrayList<Student> queryStudentInfo = TeacherPageShowStudentInfoService.queryStudentInfo(cno);
		model.addAttribute("QueryStudentInfo", queryStudentInfo);
		model.addAttribute("Cno", cno);
		return "../Teacher_stuInfo.jsp";

	}
}
