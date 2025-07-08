package forest.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import adminforest.define.AdminForest;
import cuda.web.upload.vo.FileVo;
import cuda.web.util.Util;
import jakarta.servlet.ServletContext;

@Controller
public class LandscapeController {

	private final ServletContext servletContext;

	public LandscapeController(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

	@GetMapping("/forest/landscape")
	public String index(Model model) {
		
		List<FileVo> listFileVo = Util.getFiles(servletContext, AdminForest.UPLOAD_LANDSCAPE);

		model.addAttribute("images", listFileVo);

		return "forest/landscape";
	}
}
