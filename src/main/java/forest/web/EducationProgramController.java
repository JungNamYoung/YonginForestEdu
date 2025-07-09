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
public class EducationProgramController {

	static private ServletContext servletContext;
	
	public EducationProgramController(ServletContext servletContext) {
		this.servletContext = servletContext; 
	}
	
	@GetMapping("/forest/education-program")
	public String educationProgram(Model model) {
		List<FileVo> listFileVo = Util.getFiles(servletContext, AdminForest.UPLOAD_FOOTER);		
		
		model.addAttribute(AdminForest.IMAGES, listFileVo);
		
		return "forest/educationProgram";
	}
}
