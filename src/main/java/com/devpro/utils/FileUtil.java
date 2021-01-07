package com.devpro.utils;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import org.springframework.web.multipart.MultipartFile;

public class FileUtil {
	public static boolean doUploadFile(String path, MultipartFile fileavatar) {
		File file= new File(path);
		if(!file.exists()) {
			file.mkdirs();
		}
		
		file= new File(path+"/"+fileavatar.getOriginalFilename());
		try {
			BufferedOutputStream bufferedOutputStream= new BufferedOutputStream(new FileOutputStream(file));
			bufferedOutputStream.write(fileavatar.getBytes());
			bufferedOutputStream.close();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} 
		
		
		return true;
	}
	
	public static boolean doDeleteFile(String fullpath) {
		File file= new File(fullpath);
		if(file.exists()) {
			return file.delete();
		}
		return true;
	}
}
