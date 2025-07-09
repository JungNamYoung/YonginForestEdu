package cuda.web.upload.vo;

public class FileVo {

	String filePath;
	String fileName;
	
	public void setFilePath(String path) {
		this.filePath = path;
	}

	public void setFileName(String filename) {
		this.fileName = filename;
	}

	public String getFilePath() {
		return filePath;
	}

	public String getFileName() {
		return  fileName;
	}
}
