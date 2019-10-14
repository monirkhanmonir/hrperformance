package com.exam.dao;

import com.exam.model.UserInfo;

public interface UserInfoDao extends CommonDao<UserInfo>{
	UserInfo loadUserByUsername(String username);
}
