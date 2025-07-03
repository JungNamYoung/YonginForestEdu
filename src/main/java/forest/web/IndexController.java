package forest.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import cuda.web.upload.vo.FileVo;
import cuda.web.util.Util;
import jakarta.servlet.ServletContext;

@Controller
public class IndexController {

	private final ServletContext servletContext;

	public IndexController(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

	@GetMapping("/forest/index")
	public String index(Model model) {
		
		List<FileVo> listFileVo = Util.getFiles(servletContext, "/upload-files/index");

		model.addAttribute("images", listFileVo);

		return "forest/index";
	}
}
