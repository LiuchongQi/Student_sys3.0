package pers.qlc.Student_sys.dao;

import java.util.ArrayList;

import org.mybatis.spring.annotation.MapperScan;

import pers.qlc.Student_sys.entity.Admin;
@MapperScan
public interface AdminDao {
	public void insertAdmin(Admin admin);
	public Admin selectById(String id);
	public ArrayList<Admin> selectAll();
	public void deleteAdmin(String id);
	public void updatePass(String Username,String Password);
}
