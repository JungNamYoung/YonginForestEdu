package adminforest.menu.web;

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
public class AdminPortraitController {

	private final ServletContext servletContext;
	
	public AdminPortraitController(ServletContext servletContext) {
		this.servletContext = servletContext;
	}
	
	@GetMapping("/admin/portrait")
	public String oneImage(Model model){
		
		List<FileVo> listFileVo = Util.getFiles(servletContext, AdminForest.UPLOAD_PORTRAIT);
		
		model.addAttribute(AdminForest.LIST_FILE_VO, listFileVo);
		
		return "adminforest/portrait";
	}
	
	@PostMapping("/admin/portrait/upload")
	public String upload(@RequestParam("files") List<MultipartFile> files, Model model) {
		
		List<FileVo> currentFiles = Util.getFiles(servletContext, AdminForest.UPLOAD_PORTRAIT);
		
		if (!currentFiles.isEmpty()) {
//			model.addAttribute("startPage", settingService.getDefaultPage());
//			model.addAttribute("landScapeImages", settingService.getLandscapeType());
//			model.addAttribute(AdminForest.LIST_FILE_VO, Util.getFiles(servletContext, AdminForest.UPLOAD_LANDSCAPE));
			model.addAttribute(AdminForest.LIST_FILE_VO, currentFiles);
			model.addAttribute("errorFixed", AdminForest.ERR_IMGS);
			
			return "/adminforest/portrait";
		}
		
		Util.upload(files, servletContext, AdminForest.UPLOAD_PORTRAIT);
		
		return Define.REDIRECT + "/admin/portrait";
	}
	
	@PostMapping("/admin/portrait/delete")
	public String delete(@RequestParam("filename") String filename) {
		
		Util.delete(servletContext, AdminForest.UPLOAD_PORTRAIT, filename);
		
		return Define.REDIRECT + "/admin/portrait";
	}
}
