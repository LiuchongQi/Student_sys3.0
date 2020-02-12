package pers.qlc.Student_sys.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pers.qlc.Student_sys.dao.SCDao;
import pers.qlc.Student_sys.entity.SC;

@Service
public class TeacherPageInsertScoreService {
	@Autowired
	private SCDao scDao;

	public void insertScore(SC sc) {
		scDao.insertScore(sc);
	}
}