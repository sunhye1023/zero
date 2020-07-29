package com.zerostress.userinfo.service;

import com.zerostress.command.UserInfoVO;

public interface UserInfoService {

	public int idCheck(UserInfoVO vo);
	public int join(UserInfoVO vo);
	public int login(UserInfoVO vo);
	public UserInfoVO info(String userId);
	public int update(UserInfoVO vo);
	public int pwCheck(UserInfoVO vo);
	public int delete(String userId);
}
