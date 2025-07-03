package adminforest.image.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cuda.web.define.Define;
import cuda.web.upload.vo.FileVo;
import cuda.web.util.Util;
import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpSession;

@Controller
public class FooterImageController {

	private final ServletContext servletContext;
	private static final String CONFIG_PATH = "config/footerImage.txt";

	public FooterImageController(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

//	private File getUploadDir() {
//		String realPath = servletContext.getRealPath("/upload-files");
//		return new File(realPath);
//	}
//
//	private String getConfigFilePath() {
//		return Util.dirClass(CONFIG_PATH);
//	}
//
//	private String readCurrentImage() {
//		java.util.List<String> list = FileEx.readEx(getConfigFilePath(), false);
//		if (!list.isEmpty()) {
//			return list.get(0);
//		}
//		return "";
//	}
//
//	private void writeCurrentImage(String path) throws IOException {
//		java.util.List<String> lines = java.util.Collections.singletonList(path);
//		Files.write(new File(getConfigFilePath()).toPath(), lines);
//	}

	@GetMapping("/admin/footer-image")
	public String showForm(Model model, HttpSession session) {
		if (session.getAttribute("loginUser") == null) {
			return "redirect:/admin/login";
		}
		//model.addAttribute("currentImage", readCurrentImage());
		
		List<FileVo> listFileVo = Util.getFiles(servletContext, "/upload-files/main");
		
		if(listFileVo.size() > Define.COUNT_0)
			model.addAttribute("listFileVo", listFileVo);
		else
			model.addAttribute("listFileVo");
		
		return "adminforest/footerImage";
	}

	@PostMapping("/admin/footer-image/upload")
	public String upload(@RequestParam("files") List<MultipartFile> files, HttpSession session){
		if (session.getAttribute("loginUser") == null) {
			return "redirect:/admin/login";
		}
		
		Util.upload(files, servletContext, "/upload-files/main");
				
		return "redirect:/admin/footer-image";
	}
	
	@PostMapping("/admin/footer-image/delete")
	public String delete(@RequestParam("filename") String fileanem, HttpSession session) {
		if(session.getAttribute("loginUser") == null) {
			return "redirect:/admin/login";
		}
		
		Util.delete(servletContext, "/upload-files/main", fileanem);
		
		return "redirect:/admin/footer-image";
	}
}