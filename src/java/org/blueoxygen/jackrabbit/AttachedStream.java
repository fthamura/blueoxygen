package org.blueoxygen.jackrabbit;

import java.io.File;
import java.io.InputStream;

public class AttachedStream {
	private InputStream file;
	private String contentType;
	private String fileName;
	
	public String getContentType() {
		return contentType;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public InputStream getFile() {
		return file;
	}
	public void setFile(InputStream file) {
		this.file = file;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
}
