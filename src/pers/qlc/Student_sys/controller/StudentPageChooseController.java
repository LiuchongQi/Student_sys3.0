package pers.qlc.Student_sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import pers.qlc.Student_sys.entity.SC;
import pers.qlc.Student_sys.service.StudentPageChooseService;

@Controller
@SessionAttributes("loginName")
public class StudentPageChooseController {
	@Autowired
	private StudentPageChooseService studentPageChooseService;

	@RequestMapping("/chooseCourse/{Cno}_{currentPage}")
	public String chooseCourse(@ModelAttribute("loginName") String id, @PathVariable String Cno,@PathVariable int currentPage) {
		SC sc=new SC();
		sc.setCno(Cno);
		sc.setSno(id);
		studentPageChooseService.chooseCourse(sc);
		StringBuilder sb=new StringBuilder("redirect:/queryAllCourse/");
		sb.append(currentPage);
		sb.append(".do");
		return sb.toString();
	}
}
