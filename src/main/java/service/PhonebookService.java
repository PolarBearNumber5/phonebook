package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.PhonebookDaoInter;
import vo.PhonebookVO;

@Service
public class PhonebookService implements PhonebookserviceInter{

	@Autowired
	PhonebookDaoInter dao;
	
	@Override
	public List<PhonebookVO> getlist() {
		return dao.getlist();
	}

	@Override
	public List<PhonebookVO> find(String search) {
		return dao.find(search);
	}

	@Override
	public PhonebookDaoInter dao() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(PhonebookVO pb) {
		
		return dao.insert(pb);
	}
	@Override
	public PhonebookVO findOne(int idx) {
		return dao.findOne(idx);
	}

}
