package forest.main.web;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

	@GetMapping("/index")
	public String index(Model model) {
		
		String imagesPath = application.getRealPath("/upload-images");
		File dir = new File(imagesPath);
		String[] images = dir.list((d, name) -> new File(d, name).isFile());
		
		model.addAttribute("images", images);
		
		return "forest/index";
	}
}
