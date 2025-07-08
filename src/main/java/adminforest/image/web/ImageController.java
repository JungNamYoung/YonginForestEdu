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
public class ImageController {

	private final ServletContext servletContext;

	public ImageController(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

	@GetMapping("/admin/images")
	public String listlistFileVo(Model model) {

		List<FileVo> listFileVo = Util.getFiles(servletContext, AdminForest.UPLOAD_INDEX);
		
		model.addAttribute(AdminForest.LIST_FILE_VO, listFileVo);
		
		return "adminforest/images";
	}

	@PostMapping("/admin/images/upload")
	public String uploadlistFileVo(@RequestParam("files") List<MultipartFile> files){

		Util.upload(files, servletContext, AdminForest.UPLOAD_INDEX);
				
		return Define.REDIRECT + "/admin/images";
	}

	@PostMapping("/admin/images/delete")
	public String deleteImage(@RequestParam("filename") String filename) {
				
		Util.delete(servletContext, AdminForest.UPLOAD_INDEX, filename);
		
		return Define.REDIRECT + "/admin/images";
	}
}