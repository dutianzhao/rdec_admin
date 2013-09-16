package com.roland.util;

import java.security.MessageDigest;

import sun.misc.BASE64Encoder;

public class Md5
{

	public final static String md5(String newstr)
	{
		try
		{
			MessageDigest md5;
			md5 = MessageDigest.getInstance("MD5");
			BASE64Encoder base64en = new BASE64Encoder();
			return base64en.encode(md5.digest(newstr.getBytes("utf-8")));
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	public static void main(String[] args)
	{
		System.out.println(md5("admin"));
	}
}
