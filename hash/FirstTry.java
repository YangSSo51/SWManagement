package hash_project;
import java.io.*;
import java.security.MessageDigest;
import java.util.Scanner;
import java.security.NoSuchAlgorithmException;

public class FirstTry {
    public static String getHash(String str) throws IOException, NoSuchAlgorithmException {{
	    
	        MessageDigest md = MessageDigest.getInstance("MD5");
	        md.update(str.getBytes());
	        byte byteData[] = md.digest();      
	
	        StringBuffer sb = new StringBuffer();
	        for (int i = 0; i < byteData.length; i++) {
	            sb.append(Integer.toString((byteData[i] & 0xff) + 0x100, 16).substring(1));
	        }
	        return sb.toString();
	}
 }    
    public static void main(String[] args) throws IOException, NoSuchAlgorithmException {

		String MD5 = "hello world";
		
        System.out.println(FirstTry.getHash(MD5));

    }
}