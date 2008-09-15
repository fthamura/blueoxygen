package org.blueoxygen.jackrabbit;

import java.util.Date;

public class VersionEntry  {
	private String versionLabel;
	private String fileName;
	private Date creationTime;
	//private Date modifiedTime;
	private String mimeType;
	
	public Date getCreationTime() {
		return creationTime;
	}

	public void setCreationTime(Date creationTime) {
		this.creationTime = creationTime;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public VersionEntry(String versionLabel, String fileName, Date creationTime)
	{
		this.creationTime = creationTime;
		this.fileName = fileName;
		this.versionLabel = versionLabel;
//		this.mimeType = mimeType;
//		this.modifiedTime = modifiedTime;
	}

	public String getVersionLabel() {
		return versionLabel;
	}

	public void setVersionLabel(String versionLabel) {
		this.versionLabel = versionLabel;
	}

	public String getMimeType() {
		return mimeType;
	}

	public void setMimeType(String mimeType) {
		this.mimeType = mimeType;
	}

}
