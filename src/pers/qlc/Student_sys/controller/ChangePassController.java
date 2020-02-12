package pers.qlc.Student_sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import pers.qlc.Student_sys.service.ChangePassService;

@Controller
@SessionAttributes({ "loginName", "passWord", "perType" })
public class ChangePassController {
	
	@Autowired
	private ChangePassService changePassService;
	@RequestMapping("ChangePass")
	public String ChangePass(String new_password, @ModelAttribute("loginName") String userName,
			@ModelAttribute("perType") String perType) {
		if("admin".equals(perType)) {
			changePassService.changePassAdmin(userName, new_password);
			return "Change_pass.jsp";
		}else if("student".equals(perType)) {
			changePassService.changePassStudent(userName, new_password);
			return "Change_pass.jsp";
		}else if("teacher".equals(perType)) {
			changePassService.changePassTeacher(userName, new_password);
			return "Change_pass.jsp";
		}else {
			return "";
		}
	}
}
