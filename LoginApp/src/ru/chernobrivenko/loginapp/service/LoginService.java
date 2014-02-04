package ru.chernobrivenko.loginapp.service;

import java.util.HashMap;
import java.util.Map;

public class LoginService {
	
	private Map<String,String> users = new HashMap<String, String>();
	
	public LoginService()
	{
		users.put("u1", "User 1");
		users.put("u2", "User 2");
		users.put("u3", "User 3");
	}
	
	public boolean authenticate(String userId, String password)
	{
		if(password == null || password.trim() == "" || users.get(userId) == null)
			return false;
		else
			return true;
	}
	
	public String getUserName(String userId)
	{
		return users.get(userId);
	}
}
