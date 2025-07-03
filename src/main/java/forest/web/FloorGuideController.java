package forest.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import cuda.web.define.Define;
import cuda.web.util.Util;
import jakarta.servlet.ServletContext;

@Controller
public class FloorGuideController {
	
	static private ServletContext servletContext;
	
	public FloorGuideController(ServletContext servletContext) {
		this.servletContext = servletContext; 
	}
	
	@GetMapping("/forest/floorGuide")
	public String floorGuide(Model model) {
		List<String> results = Util.getFiles(servletContext, "/upload-images/main");		
		
		if(results.size() > 0)		
			model.addAttribute("footerImgPath", results.get(Define.INDEX_0));
		else
			model.addAttribute("footerImgPath");
		
		return "forest/floorGuide";
	}
}
