package adminforest.image.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cuda.web.upload.vo.FileVo;
import cuda.web.util.Util;
import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpSession;

@Controller
public class ImageController {

	private final ServletContext servletContext;

	public ImageController(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

	@GetMapping("/admin/images")
	public String listlistFileVo(Model model, HttpSession session) {
		if (session.getAttribute("loginUser") == null) {
			return "redirect:/admin/login";
		}
		
		List<FileVo> listFileVo = Util.getFiles(servletContext, "/upload-files/index");
		
		model.addAttribute("listFileVo", listFileVo);
		
		return "adminforest/images";
	}

	@PostMapping("/admin/images/upload")
	public String uploadlistFileVo(@RequestParam("files") List<MultipartFile> files, HttpSession session){
		if (session.getAttribute("loginUser") == null) {
			return "redirect:/admin/login";
		}
		
		Util.upload(files, servletContext, "/upload-files/index");
				
		return "redirect:/admin/images";
	}

	@PostMapping("/admin/images/delete")
	public String deleteImage(@RequestParam("filename") String filename, HttpSession session) {
		if (session.getAttribute("loginUser") == null) {
			return "redirect:/admin/login";
		}
				
		Util.delete(servletContext, "/upload-files/index", filename);
		
		return "redirect:/admin/images";
	}
}