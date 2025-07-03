package adminforest.main.web;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.ServletContext;

@Controller
public class IndexController {

	private final ServletContext servletContext;

	public IndexController(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

	@GetMapping("/index")
	public String index(Model model) {

		String imagesPath = servletContext.getRealPath("/upload-images");
		File dir = new File(imagesPath);
		String[] images = dir.list((d, name) -> new File(d, name).isFile());

		model.addAttribute("images", images);

		return "adminforest/index";
	}
}
