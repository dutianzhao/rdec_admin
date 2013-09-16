package com.roland.test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Scanner;

public class Test002 
{
	public static void main(String[] args)
	{
		/*String aa = "09:00";
		for (int i = 0; i < 70 - 26; i++)
		{
			aa = after(aa, 20);
			System.out.println(aa);
		}*/
		//获取cpu序列号
		try {
			long start = System.currentTimeMillis();
			Process process = Runtime.getRuntime().exec(
					new String[] { "wmic", "cpu", "get", "ProcessorId" });
			process.getOutputStream().close();
			Scanner sc = new Scanner(process.getInputStream());
			String property = sc.next();
			String serial = sc.next();
			System.out.println(property + ": " + serial);
			
			System.out.println("time:" + (System.currentTimeMillis() - start));
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public static String after(String nowTime, Integer number)
	{
		String time = "";
		String pattern = "HH:mm";
		SimpleDateFormat sdf = new SimpleDateFormat(pattern);
		Date now = null;
		try
		{
			now = sdf.parse(nowTime);
		}
		catch (ParseException e)
		{
			e.printStackTrace();
		}
		Calendar c = Calendar.getInstance();
		c.setTime(now);
		c.add(Calendar.MINUTE, number);
		
		if(c.get(Calendar.HOUR_OF_DAY) != 12)
		{
			
		}
		
		time = c.get(Calendar.HOUR_OF_DAY) + ":" + c.get(Calendar.MINUTE);
		return time;
	}
}
