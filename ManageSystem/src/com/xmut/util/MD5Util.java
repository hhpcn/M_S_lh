package com.xmut.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import sun.misc.BASE64Encoder;

public class MD5Util {

	public static String encode(String pwd)  {
		if(pwd==null){
			return pwd;
		}
		MessageDigest md;
		try {
			md = MessageDigest.getInstance("MD5");
			byte[] bts = md.digest(pwd.getBytes());
			BASE64Encoder encoder = new BASE64Encoder();
			return encoder.encode(bts);
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		return pwd;
		
	}
}
