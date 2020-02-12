package pers.qlc.Student_sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import pers.qlc.Student_sys.entity.SC;
import pers.qlc.Student_sys.service.TeacherPageInsertScoreService;

@Controller
@SessionAttributes("loginName")
public class TeacherPageInsertScoreController {
	@Autowired
	private TeacherPageInsertScoreService TeacherPageInsertScoreService;
	@RequestMapping("insertScore/{Sno}_{Score}_{Cno}")
	public String insertScore(@PathVariable String Sno,@PathVariable int Score,@PathVariable String Cno) {
		SC sc=new SC();
		sc.setCno(Cno);
		sc.setSno(Sno);
		sc.setScore(Score);		
		TeacherPageInsertScoreService.insertScore(sc);
		StringBuilder url=new StringBuilder("redirect:/ShowCourseStudent/");
		url.append(Cno);
		url.append(".do");
		return url.toString();
	}
}
