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
public class AdminFootController {

	private final ServletContext servletContext;

	public AdminFootController(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

	@GetMapping("/admin/footer-image")
	public String showForm(Model model) {
		
		List<FileVo> listFileVo = Util.getFiles(servletContext, AdminForest.UPLOAD_FOOTER);
		
//		if(listFileVo.size() > Define.COUNT_0)
			model.addAttribute(AdminForest.LIST_FILE_VO, listFileVo);
//		else
//			model.addAttribute(AdminForest.LIST_FILE_VO);
		
		return "adminforest/footerImage";
	}

	@PostMapping("/admin/footer-image/upload")
	public String upload(@RequestParam("files") List<MultipartFile> files){
		
		Util.upload(files, servletContext, AdminForest.UPLOAD_FOOTER);
				
		return Define.REDIRECT + "/admin/footer-image";
	}
	
	@PostMapping("/admin/footer-image/delete")
	public String delete(@RequestParam("filename") String fileanem) {
		
		Util.delete(servletContext, AdminForest.UPLOAD_FOOTER, fileanem);
		
		return Define.REDIRECT + "/admin/footer-image";
	}
}