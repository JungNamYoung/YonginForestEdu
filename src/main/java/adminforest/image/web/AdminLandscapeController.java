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
public class AdminLandscapeController {

	private final ServletContext servletContext;

	public AdminLandscapeController(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

	@GetMapping("/admin/landscape")
	public String listlistFileVo(Model model) {

		List<FileVo> listFileVo = Util.getFiles(servletContext, AdminForest.UPLOAD_LANDSCAPE);
		
		model.addAttribute(AdminForest.LIST_FILE_VO, listFileVo);
		
		return "adminforest/landscape";
	}

	@PostMapping("/admin/landscape/upload")
	public String uploadlistFileVo(@RequestParam("files") List<MultipartFile> files){

		Util.upload(files, servletContext, AdminForest.UPLOAD_LANDSCAPE);
				
		return Define.REDIRECT + "/admin/landscape";
	}

	@PostMapping("/admin/landscape/delete")
	public String deleteImage(@RequestParam("filename") String filename) {
				
		Util.delete(servletContext, AdminForest.UPLOAD_LANDSCAPE, filename);
		
		return Define.REDIRECT + "/admin/landscape";
	}
	
	@PostMapping("/admin/landscape/images-rolling")
	public String imagesRolling(@RequestParam("files") List<MultipartFile> files, Model model) {
		
		Util.upload(files, servletContext, AdminForest.UPLOAD_LANDSCAPE);
		
		return Define.REDIRECT + "/admin/start-page";
	}
	
	@PostMapping("/admin/landscape/images-rolling/delete")
	public String delete(@RequestParam("filename") String filename) {
				
		Util.delete(servletContext, AdminForest.UPLOAD_LANDSCAPE, filename);
		
		return Define.REDIRECT + "/admin/start-page";
	}
	
	@PostMapping("/admin/landscape/image-fixed")
	public String imageFixed(@RequestParam("files") List<MultipartFile> files, Model model) {
		
		Util.upload(files, servletContext, AdminForest.UPLOAD_PORTRAIT);
		
		return Define.REDIRECT + "/admin/start-page";
	}
	
	@PostMapping("/admin/landscape/image-fixed/delete")
	public String fixedDelete(@RequestParam("filename") String filename) {
				
		Util.delete(servletContext, AdminForest.UPLOAD_PORTRAIT, filename);
		
		return Define.REDIRECT + "/admin/start-page";
	}
	
}