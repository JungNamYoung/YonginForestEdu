package forest.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import adminforest.define.AdminForest;
import cuda.web.define.Define;
import cuda.web.upload.vo.FileVo;
import cuda.web.util.Util;
import jakarta.servlet.ServletContext;

@Controller
public class PortraitController {
	
	private static ServletContext servletContext;
	
	public PortraitController(ServletContext servletContext) {
		this.servletContext = servletContext;
	}

	@GetMapping("/forest/portrait")
	public String event(Model model) {
		
		List<FileVo> listFileVo = Util.getFiles(servletContext, AdminForest.UPLOAD_PORTRAIT);
		
		if(listFileVo.size() > Define.COUNT_0) {
			model.addAttribute("oneImagePath", listFileVo.get(Define.INDEX_0).getPath());
		}
		else {
			model.addAttribute("oneImagePath");
		}
		
		return "forest/portrait";
	}
}
