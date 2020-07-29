package com.zerostress.userinfo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zerostress.command.UserInfoVO;
import com.zerostress.userinfo.mapper.UserInfoMapper;

@Service("userinfoService")
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoMapper userinfoMapper;
	
	@Override
	public int idCheck(UserInfoVO vo) {
		
		return userinfoMapper.idCheck(vo);
	}

	@Override
	public int join(UserInfoVO vo) {
		
		return userinfoMapper.join(vo);
	}

	@Override
	public int login(UserInfoVO vo) {
		
		return userinfoMapper.login(vo);
	}



}
