package com.roland.test;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.apache.http.client.ClientProtocolException;

import com.alibaba.fastjson.JSON;
import com.roland.util.HttpClientUtil;
import com.roland.util.Ip;

public class Test001
{
	public static void main(String[] args)
	{
		String url = "http://ip.taobao.com/service/getIpInfo.php";
		Map<String,String> map = new HashMap<String, String>();
		map.put("ip", "60.247.95.190");
		try
		{
			String ipku = HttpClientUtil.commentClient(url, map);
			
			Map<?,?> obj = (Map<?, ?>) JSON.parse(ipku);
			
			
			if(obj.get("code").toString().equalsIgnoreCase("0"))
			{
				Ip ip = JSON.parseObject(JSON.toJSON(obj.get("data")).toString(), Ip.class);
				
				System.out.println(ip.getRegion());
			}
		}
		catch (ClientProtocolException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		catch (IOException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
