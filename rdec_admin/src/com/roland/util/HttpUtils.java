package com.roland.util;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.roland.model.ExtModel;

public class HttpUtils 
{
	public static void responseHead(HttpServletResponse response)
	{
		response.setHeader("sessionstatus", "timeout");
	}
	
	public static List<ExtModel> listExtModel(String modelName) throws InstantiationException, IllegalAccessException, ClassNotFoundException
	{
		 Object model = Class.forName("com.roland.model."+modelName).newInstance();
		  List<ExtModel> listExtModel = new ArrayList<ExtModel>();
		  Field[] field = model.getClass().getDeclaredFields();        //获取实体类的所有属性，返回Field数组  
          for(int j=0 ; j<field.length ; j++)
          {    
        	  ExtModel extModel = new ExtModel();
        	  extModel.setName(field[j].getName());
        	  String modelType = field[j].getGenericType().toString();
        	  extModel.setType( modelType.substring(modelType.lastIndexOf(".") + 1));
        	  listExtModel.add(extModel);
          }
		return listExtModel;
	}
	public static void main(String[] args) {
		try {
			List<ExtModel> listModel = listExtModel("School");
			
			for (int i = 0; i < listModel.size(); i++) {
				System.out.println(listModel.get(i).getName() + "-----" + listModel.get(i).getType());
			}
			
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
