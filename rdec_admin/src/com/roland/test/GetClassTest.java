package com.roland.test;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Date;

import com.roland.model.School;


/**
* Java反射机制四种获取Class对象的方法
* 
* @author jiqinlin
* 
*/
public class GetClassTest {
   public static void main(String[] args) throws IllegalArgumentException, NoSuchMethodException, IllegalAccessException, InvocationTargetException, Exception, ClassNotFoundException {
	   testReflect("School");
   }

   public static void testReflect(String obj) throws NoSuchMethodException, IllegalAccessException, IllegalArgumentException, InvocationTargetException, Exception{
	   Object al = Class.forName("com.roland.model.School").newInstance();
	   Field[] field = al.getClass().getDeclaredFields();        //获取实体类的所有属性，返回Field数组  
           for(int j=0 ; j<field.length ; j++)
           {     //遍历所有属性
               String name = field[j].getName();    //获取属性的名字
               System.out.println("attribute name:"+name);                
               String type = field[j].getGenericType().toString();    //获取属性的类型
               System.out.println(type);     
               
               
           }
   }
}