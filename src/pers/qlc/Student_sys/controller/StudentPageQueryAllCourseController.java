package pers.qlc.Student_sys.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import pers.qlc.Student_sys.entity.Course;
import pers.qlc.Student_sys.entity.PageBean;
import pers.qlc.Student_sys.service.StudentPageChooseService;

@Controller
public class StudentPageQueryAllCourseController {
	@Autowired
	private StudentPageChooseService StudentPageChooseService;

	@RequestMapping("queryAllCourse/{currPage}")
	public String queryAllCourse(Model model, @PathVariable int currPage) {

		//创建PageBean对象，设置当前页参数； 传入service方法参数
		PageBean<Course> pageBean = new PageBean<Course>();
		pageBean.setCurrentPage(currPage);

		//调用service
		StudentPageChooseService.queryAllCourse(pageBean); // pageBean已经被dao填充了数据

		//保存pageBean对象，到request域中
		model.addAttribute("pageBean", pageBean);

		return "../Student_cho.jsp";
	}
}
