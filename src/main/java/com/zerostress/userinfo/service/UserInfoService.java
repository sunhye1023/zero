package com.zerostress.userinfo.service;

import com.zerostress.command.UserInfoVO;

public interface UserInfoService {

	public int idCheck(UserInfoVO vo);
	public int join(UserInfoVO vo);
	public int login(UserInfoVO vo);

	
}
