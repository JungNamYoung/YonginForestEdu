package cuda.web.upload.vo;

import java.util.List;
import java.util.ArrayList;

public class UploadVo {

	public String dir;
	public List<String> fileNames = new ArrayList<>();
	
	public String getDir() {
		return dir;
	}
	public void setDir(String dir) {
		this.dir = dir;
	}
	
	public void addFileName(String str) {
		this.fileNames.add(str);
	}
}
