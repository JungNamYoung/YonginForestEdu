package adminforest.image.web;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import cuda.web.util.FileEx;
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

	private File getUploadDir() {
		String realPath = servletContext.getRealPath("/upload-images");
		return new File(realPath);
	}

	private String getConfigFilePath() {
		return Util.dirClass(CONFIG_PATH);
	}

	private String readCurrentImage() {
		java.util.List<String> list = FileEx.readEx(getConfigFilePath(), false);
		if (!list.isEmpty()) {
			return list.get(0);
		}
		return "";
	}

	private void writeCurrentImage(String path) throws IOException {
		java.util.List<String> lines = java.util.Collections.singletonList(path);
		Files.write(new File(getConfigFilePath()).toPath(), lines);
	}

	@GetMapping("/admin/footer-image")
	public String showForm(Model model, HttpSession session) {
		if (session.getAttribute("loginUser") == null) {
			return "redirect:/admin/login";
		}
		model.addAttribute("currentImage", readCurrentImage());
		return "adminforest/footerImage";
	}

	@PostMapping("/admin/footer-image/upload")
	public String upload(@RequestParam("file") MultipartFile file, HttpSession session) throws IOException {
		if (session.getAttribute("loginUser") == null) {
			return "redirect:/admin/login";
		}
		if (!file.isEmpty()) {
			File dir = getUploadDir();
			if (!dir.exists()) {
				dir.mkdirs();
			}
			File dest = new File(dir, file.getOriginalFilename());
			file.transferTo(dest);
			String savePath = "/upload-images/" + file.getOriginalFilename();
			writeCurrentImage(savePath);
		}
		return "redirect:/admin/footer-image";
	}
}