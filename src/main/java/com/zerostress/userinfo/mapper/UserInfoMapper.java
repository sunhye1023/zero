package com.zerostress.userinfo.mapper;

import com.zerostress.command.UserInfoVO;

public interface UserInfoMapper {

	public int idCheck(UserInfoVO vo);
	public int join(UserInfoVO vo);
	public int login(UserInfoVO vo);

	
}
