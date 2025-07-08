package adminforest.image.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import adminforest.define.AdminForest;
import cuda.web.define.Define;
import cuda.web.upload.vo.FileVo;
import cuda.web.util.Util;
import jakarta.servlet.ServletContext;

@Controller
public class PortraitController {

	private final ServletContext servletContext;
	
	public PortraitController(ServletContext servletContext) {
		this.servletContext = servletContext;
	}
	
	@GetMapping("/admin/portrait")
	public String oneImage(Model model){
		
		List<FileVo> listFileVo = Util.getFiles(servletContext, AdminForest.UPLOAD_ONE_IMAGE);
		
		if(listFileVo.size() > Define.COUNT_0) {
			model.addAttribute(AdminForest.LIST_FILE_VO, listFileVo);
		}
		else
			model.addAttribute(AdminForest.LIST_FILE_VO);
		
		return "adminforest/portrait";
	}
	
	@PostMapping("/admin/portrait/upload")
	public String upload(@RequestParam("files") List<MultipartFile> files) {
		
		Util.upload(files, servletContext, AdminForest.UPLOAD_ONE_IMAGE);
		
		return Define.REDIRECT + "/admin/portrait";
	}
	
	@PostMapping("/admin/portrait/delete")
	public String delete(@RequestParam("filename") String filename) {
		
		Util.delete(servletContext, AdminForest.UPLOAD_ONE_IMAGE, filename);
		
		return Define.REDIRECT + "/admin/portrait";
	}
}
