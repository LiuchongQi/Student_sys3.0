package pers.qlc.Student_sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.qlc.Student_sys.service.AdminPageDeleteService;

@Controller
public class AdminPageDeleteController {
	@Autowired
	private AdminPageDeleteService adminPageDeleteService;

	@RequestMapping("deleteAdmin/{id}")
	public String deleteAdmin(@PathVariable String id) {
		adminPageDeleteService.deleteAdmin(id);
		return "redirect:/queryAdmin.do";
	}

	@RequestMapping("deleteCourse/{id}")
	public String deleteCourse(@PathVariable String id) {
		adminPageDeleteService.deleteCourse(id);
		return "redirect:/queryCourse.do";
	}

	@RequestMapping("deleteTeacher/{id}")
	public String deleteTeacher(@PathVariable String id) {
		adminPageDeleteService.deleteTeacher(id);
		return "redirect:/queryTeacher.do";
	}

	@RequestMapping("deleteStudent/{id}")
	public String deleteStudent(@PathVariable String id) {
		adminPageDeleteService.deleteStudent(id);
		return "redirect:/queryStudent.do";
	}
}
