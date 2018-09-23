package com.toolsBean;

import java.io.UnsupportedEncodingException;

public class MyTools {
	public static int strToint(String str){			
		if(str==null||str.equals(""))
			str="0";
		int i=0;
		try {
			i=Integer.parseInt(str);
		} catch(NumberFormatException e){
			e.printStackTrace();
		}
		return i;		
	}
	
	public static String toChinese(String str){		
		if(str==null)
			str="";
		try {
			str=new String(str.getBytes("ISO-8859-1"),"gbk");
		} catch (UnsupportedEncodingException e) {
			str="";
			e.printStackTrace();
		}
		return str;
	}
}