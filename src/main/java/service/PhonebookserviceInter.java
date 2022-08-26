package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import dao.PhonebookDAO;
import dao.PhonebookDaoInter;
import vo.PhonebookVO;

public interface PhonebookserviceInter {

	@Autowired
	PhonebookDaoInter dao();
	
	List<PhonebookVO> getlist();

	List<PhonebookVO> find(String search);
	
	int insert(PhonebookVO pb);
	
	PhonebookVO findOne(int idx);
}
