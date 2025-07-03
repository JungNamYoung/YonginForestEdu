package forest.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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

//		String dirEx = "/upload-images/index";
//		
//		String imagesPath = servletContext.getRealPath(dirEx);
//		
//		File dir = new File(imagesPath);
//		String[] images = dir.list((d, name) -> new File(d, name).isFile());
//		
//		List<String> results = new ArrayList<>();
//		
//		for(String image : images) {
//			results.add(servletContext.getContextPath() + dirEx + Define.SLASH +image);
//		}
		
		List<String> results = Util.getFiles(servletContext, "/upload-images/index");

		model.addAttribute("images", results);

		return "forest/index";
	}
}
