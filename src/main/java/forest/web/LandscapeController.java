package forest.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import adminforest.define.AdminForest;
import adminforest.menu.service.SettingService;
import cuda.web.define.Define;
import cuda.web.upload.vo.FileVo;
import cuda.web.util.Util;
import jakarta.servlet.ServletContext;

@Controller
public class LandscapeController {

	private final ServletContext servletContext;
	private final SettingService settingService;

	public LandscapeController(ServletContext servletContext, SettingService settingService) {
		this.servletContext = servletContext;
		this.settingService = settingService;
	}

	@GetMapping("/forest/landscape")
	public String index(Model model) {
		
		List<FileVo> listFileVo = null;
		
		if(settingService.getLandscapeType().equals(AdminForest.VALUE_IMAGES_ROLLING)) {
			listFileVo = Util.getFiles(servletContext, AdminForest.UPLOAD_LANDSCAPE);	
		}
		else if(settingService.getLandscapeType().equals(AdminForest.VALUE_IMAGE_FIXED)) {
			listFileVo = Util.getFiles(servletContext, AdminForest.UPLOAD_PORTRAIT);
		}
		else {
			Util.error(Define.ERR_CONDITION);
		}

		model.addAttribute(AdminForest.LIST_FILE_VO, listFileVo);		
				
		model.addAttribute(AdminForest.KEY_LANDSCAPE_TYPE, settingService.getLandscapeType());

		return "forest/landscape";
	}
}

