package adminforest.image.web;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.ServletContext;
import jakarta.servlet.http.HttpSession;

@Controller
public class ImageController {

	private final ServletContext servletContext;

	public ImageController(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

	private File getImageDir() {
		String realPath = servletContext.getRealPath("/upload-images");
		return new File(realPath);
	}

	@GetMapping("/images")
	public String listImages(Model model, HttpSession session) {
		if (session.getAttribute("loginUser") == null) {
			return "redirect:/login";
		}
		File dir = getImageDir();
		String[] names = dir.list((d, name) -> new File(d, name).isFile());
		if (names != null) {
			model.addAttribute("images", Arrays.asList(names));
		}
		return "adminforest/images";
	}

	@PostMapping("/images/upload")
	public String uploadImages(@RequestParam("files") List<MultipartFile> files, HttpSession session) throws IOException {
		if (session.getAttribute("loginUser") == null) {
			return "redirect:/login";
		}
		File dir = getImageDir();
		if (!dir.exists()) {
			dir.mkdirs();
		}
		for (MultipartFile file : files) {
			if (!file.isEmpty()) {
				File dest = new File(dir, file.getOriginalFilename());
				file.transferTo(dest);
			}
		}
		return "redirect:/images";
	}

	@PostMapping("/images/delete")
	public String deleteImage(@RequestParam("filename") String filename, HttpSession session) {
		if (session.getAttribute("loginUser") == null) {
			return "redirect:/login";
		}
		File file = new File(getImageDir(), filename);
		if (file.exists()) {
			file.delete();
		}
		return "redirect:/images";
	}
}