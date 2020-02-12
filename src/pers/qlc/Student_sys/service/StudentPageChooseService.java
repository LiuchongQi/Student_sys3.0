package pers.qlc.Student_sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pers.qlc.Student_sys.dao.CourseDao;
import pers.qlc.Student_sys.dao.SCDao;
import pers.qlc.Student_sys.entity.Course;
import pers.qlc.Student_sys.entity.PageBean;
import pers.qlc.Student_sys.entity.SC;

@Service
public class StudentPageChooseService {
	@Autowired
	private SCDao scDao;

	public void chooseCourse(SC sc) {
		try {
			scDao.insertSC(sc);
		} catch (Exception e) {
		}
	}

	@Autowired
	private CourseDao courseDao;

	public void queryAllCourse(PageBean<Course> pb) {
		// 查询总记录数; 设置到pb对象中
		int totalCount = courseDao.getTotalCount();
		pb.setTotalCount(totalCount);

		// 判断
		if (pb.getCurrentPage() <= 0) {
			pb.setCurrentPage(1); // 把当前页设置为1
		} else if (pb.getCurrentPage() > pb.getTotalPage()) {
			pb.setCurrentPage(pb.getTotalPage()); // 把当前页设置为最大页数
		}

		//  获取当前页： 计算查询的起始行、返回的行数
		int index;
		int currentPage = pb.getCurrentPage();
		if (currentPage == 1) {
			index = 0;
		} else {
			index = (currentPage - 1) * pb.getPageCount() - 1; // 查询的起始行-1
		}

		int count = pb.getPageCount(); // 查询返回的行数
		// 设置到pb对象中
		pb.setPageData(courseDao.selectAllCho(index, count));

	}
}
