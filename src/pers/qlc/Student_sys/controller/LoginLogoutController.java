package pers.qlc.Student_sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import pers.qlc.Student_sys.service.LoginService;

@Controller
@SessionAttributes({ "loginName", "passWord", "perType" })
public class LoginLogoutController {

	@Autowired
	private LoginService loginService;

	@RequestMapping("/login")
	public String login(String username, String password, String per_type, Model model) {
		String fail = "index.jsp?error=yes";
		String adminPage = "Admin_page.jsp";
		String studentPage = "Student_page.jsp";
		String teacherPage = "Teacher_page.jsp";

		if (username == null || "".equals(username) || password == null || "".equals(password)) {
			return fail;
		}
		if ("admin".equals(per_type)) {
			if (loginService.loginAdmin(username, password)) {
				model.addAttribute("loginName", username);
				model.addAttribute("passWord", password);
				model.addAttribute("perType", per_type);
				return adminPage;
			} else {
				return fail;
			}

		} else if ("teacher".equals(per_type)) {
			if (loginService.loginTeacher(username, password)) {
				model.addAttribute("loginName", username);
				model.addAttribute("passWord", password);
				model.addAttribute("perType", per_type);
				return teacherPage;
			} else {
				return fail;
			}
		} else if ("student".equals(per_type)) {
			if (loginService.loginStudent(username, password)) {
				model.addAttribute("loginName", username);
				model.addAttribute("passWord", password);
				model.addAttribute("perType", per_type);
				return studentPage;
			}
		}
		return fail;
	}

	@RequestMapping("/Logout")
	public String logout(SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		return "index.jsp";
	}
}
